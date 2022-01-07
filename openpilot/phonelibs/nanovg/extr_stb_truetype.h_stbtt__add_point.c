
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {float x; float y; } ;
typedef TYPE_1__ stbtt__point ;



__attribute__((used)) static void stbtt__add_point(stbtt__point *points, int n, float x, float y)
{
   if (!points) return;
   points[n].x = x;
   points[n].y = y;
}
