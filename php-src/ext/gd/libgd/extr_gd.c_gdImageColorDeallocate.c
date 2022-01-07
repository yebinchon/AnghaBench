
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef TYPE_1__* gdImagePtr ;
struct TYPE_3__ {int* open; scalar_t__ trueColor; } ;



void gdImageColorDeallocate (gdImagePtr im, int color)
{
 if (im->trueColor) {
  return;
 }

 im->open[color] = 1;
}
