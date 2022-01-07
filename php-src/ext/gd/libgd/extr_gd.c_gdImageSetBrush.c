
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_1__ ;


typedef TYPE_1__* gdImagePtr ;
struct TYPE_10__ {int* brushColorMap; int trueColor; struct TYPE_10__* brush; } ;


 int gdImageAlpha (TYPE_1__*,int) ;
 int gdImageBlue (TYPE_1__*,int) ;
 int gdImageColorResolveAlpha (TYPE_1__*,int ,int ,int ,int ) ;
 int gdImageColorsTotal (TYPE_1__*) ;
 int gdImageGreen (TYPE_1__*,int) ;
 int gdImageRed (TYPE_1__*,int) ;

void gdImageSetBrush (gdImagePtr im, gdImagePtr brush)
{
 int i;
 im->brush = brush;
 if (!im->trueColor && !im->brush->trueColor) {
  for (i = 0; i < gdImageColorsTotal(brush); i++) {
   int index;
   index = gdImageColorResolveAlpha(im, gdImageRed(brush, i), gdImageGreen(brush, i), gdImageBlue(brush, i), gdImageAlpha(brush, i));
   im->brushColorMap[i] = index;
  }
 }
}
