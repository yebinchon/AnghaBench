
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum shape { ____Placeholder_shape } shape ;
typedef enum rotation { ____Placeholder_rotation } rotation ;


 int * colors ;
 int draw_shape_full (int,int ,int,int,int,int,int,unsigned char*) ;

__attribute__((used)) static void draw_shape(enum shape shape,
                       int x,
                       int y,
                       int w,
                       int h,
                       enum rotation rot,
                       unsigned char *buffer)
{
    draw_shape_full(shape, colors[shape], x, y, w, h, rot, buffer);
}
