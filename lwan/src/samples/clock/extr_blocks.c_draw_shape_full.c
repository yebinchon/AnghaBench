
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum shape { ____Placeholder_shape } shape ;
typedef enum rotation { ____Placeholder_rotation } rotation ;
typedef enum color { ____Placeholder_color } color ;


 unsigned int** offs ;

__attribute__((used)) static void draw_shape_full(enum shape shape,
                            enum color color,
                            int x,
                            int y,
                            int w,
                            int h,
                            enum rotation rot,
                            unsigned char *buffer)
{
    unsigned int offset = offs[shape][rot];
    const int area = w * h;

    for (int i = 0; i < 4; i++) {
        int y_off, x_off, dx, dy, index;

        y_off = ((int)(offset & 7)) - 3;
        offset >>= 3;
        x_off = ((int)(offset & 7)) - 3;
        offset >>= 5;

        dx = x + x_off;
        dy = y + y_off;
        index = dy * 32 + dx;

        if (index >= 0 && index < area && dx < w)
            buffer[index] = (unsigned char)color;
    }
}
