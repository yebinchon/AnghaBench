
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_1__ ;


typedef TYPE_1__* gdImagePtr ;
struct TYPE_8__ {scalar_t__ trueColor; } ;


 TYPE_1__* gdImageScaleBilinearPalette (TYPE_1__*,unsigned int const,unsigned int const) ;
 TYPE_1__* gdImageScaleBilinearTC (TYPE_1__*,unsigned int const,unsigned int const) ;

gdImagePtr gdImageScaleBilinear(gdImagePtr im, const unsigned int new_width, const unsigned int new_height)
{
 if (im->trueColor) {
  return gdImageScaleBilinearTC(im, new_width, new_height);
 } else {
  return gdImageScaleBilinearPalette(im, new_width, new_height);
 }
}
