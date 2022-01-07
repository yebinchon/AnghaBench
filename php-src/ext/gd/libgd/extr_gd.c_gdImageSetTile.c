
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_1__ ;


typedef TYPE_1__* gdImagePtr ;
struct TYPE_10__ {int* tileColorMap; int trueColor; struct TYPE_10__* tile; } ;


 int gdImageAlpha (TYPE_1__*,int) ;
 int gdImageBlue (TYPE_1__*,int) ;
 int gdImageColorResolveAlpha (TYPE_1__*,int ,int ,int ,int ) ;
 int gdImageColorsTotal (TYPE_1__*) ;
 int gdImageGreen (TYPE_1__*,int) ;
 int gdImageRed (TYPE_1__*,int) ;

void gdImageSetTile (gdImagePtr im, gdImagePtr tile)
{
 int i;
 im->tile = tile;
 if (!im->trueColor && !im->tile->trueColor) {
  for (i = 0; i < gdImageColorsTotal(tile); i++) {
   int index;
   index = gdImageColorResolveAlpha(im, gdImageRed(tile, i), gdImageGreen(tile, i), gdImageBlue(tile, i), gdImageAlpha(tile, i));
   im->tileColorMap[i] = index;
  }
 }
}
