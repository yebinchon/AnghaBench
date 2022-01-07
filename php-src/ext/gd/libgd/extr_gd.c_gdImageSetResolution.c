
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef TYPE_1__* gdImagePtr ;
struct TYPE_3__ {unsigned int res_x; unsigned int res_y; } ;



void gdImageSetResolution(gdImagePtr im, const unsigned int res_x, const unsigned int res_y)
{
 if (res_x > 0) im->res_x = res_x;
 if (res_y > 0) im->res_y = res_y;
}
