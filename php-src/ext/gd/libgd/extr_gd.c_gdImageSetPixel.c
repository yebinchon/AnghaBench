
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef TYPE_1__* gdImagePtr ;
struct TYPE_6__ {int* style; int stylePos; int styleLength; int AA_color; int** tpixels; int** pixels; int alphaBlendingFlag; int trueColor; } ;


 int gdAlphaBlend (int,int) ;







 int gdImageBoundsSafe (TYPE_1__*,int,int) ;
 int gdImageBrushApply (TYPE_1__*,int,int) ;
 int gdImageTileApply (TYPE_1__*,int,int) ;
 int gdLayerMultiply (int,int) ;
 int gdLayerOverlay (int,int) ;



 int gdTransparent ;

void gdImageSetPixel (gdImagePtr im, int x, int y, int color)
{
 int p;
 switch (color) {
  case 130:
   if (!im->style) {

    return;
   } else {
    p = im->style[im->stylePos++];
   }
   if (p != gdTransparent) {
    gdImageSetPixel(im, x, y, p);
   }
   im->stylePos = im->stylePos % im->styleLength;
   break;
  case 129:
   if (!im->style) {

    return;
   }
   p = im->style[im->stylePos++];
   if (p != gdTransparent && p != 0) {
    gdImageSetPixel(im, x, y, 136);
   }
   im->stylePos = im->stylePos % im->styleLength;
   break;
  case 136:
   gdImageBrushApply(im, x, y);
   break;
  case 128:
   gdImageTileApply(im, x, y);
   break;
  case 137:


   gdImageSetPixel(im, x, y, im->AA_color);
   break;
  default:
   if (gdImageBoundsSafe(im, x, y)) {
    if (im->trueColor) {
     switch (im->alphaBlendingFlag) {
      default:
      case 131:
       im->tpixels[y][x] = color;
       break;
      case 135:
      case 133:
       im->tpixels[y][x] = gdAlphaBlend(im->tpixels[y][x], color);
       break;
      case 132 :
       im->tpixels[y][x] = gdLayerOverlay(im->tpixels[y][x], color);
       break;
      case 134 :
       im->tpixels[y][x] = gdLayerMultiply(im->tpixels[y][x], color);
       break;
     }
    } else {
     im->pixels[y][x] = color;
    }
   }
   break;
 }
}
