function [] = Tri(num_points, show_progress)
    a = [2,1];
    b = [4.5, 5.33013];
    c = [7, 1];
    
    points = [a; b; c];
    x0=10;
    y0=10;
    width=1000;
    height=1000;
    set(gcf,'position',[x0,y0,width,height])
    
    scatter(2,1, 'o', 'filled','SizeData',30)
    hold on
    scatter(4.5, 5.33013, 'o', 'filled','SizeData',20)
    scatter(7, 1, 'o', 'filled','SizeData',20)
    
    %scatter(4, 3, 'o', 'filled', 'SizeData',20)
    
    curr = [4, 3];
    
    for i=1:num_points
        x = curr(1);
        y = curr(2);
    
        r = randi(3, 1);
        x_new = 0.5*(points(r, 1) + x);
        y_new = 0.5*(points(r, 2) + y);
        scatter(x_new, y_new, 'o','filled','SizeData', 10)
        if (show_progress==true) && (rem(i, 50)==0)
            pause(0.00000);
        end
        curr = [x_new, y_new];
    end
end