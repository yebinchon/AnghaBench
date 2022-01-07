
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef TYPE_1__* gdImagePtr ;
struct TYPE_3__ {int cx1; int cy1; int cx2; int cy2; } ;



void gdImageGetClip (gdImagePtr im, int *x1P, int *y1P, int *x2P, int *y2P)
{
 *x1P = im->cx1;
 *y1P = im->cy1;
 *x2P = im->cx2;
 *y2P = im->cy2;
}
