
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


typedef TYPE_1__* gdImagePtr ;
typedef int gdIOCtxPtr ;
struct TYPE_7__ {int interlace; int blue; int green; int red; int transparent; int sy; int sx; int colorsTotal; scalar_t__ trueColor; } ;


 int GIFEncode (int ,int ,int ,int,int ,int ,int,int ,int ,int ,TYPE_1__*) ;
 int colorstobpp (int ) ;
 TYPE_1__* gdImageCreatePaletteFromTrueColor (TYPE_1__*,int,int) ;
 int gdImageDestroy (TYPE_1__*) ;

__attribute__((used)) static int _gdImageGifCtx(gdImagePtr im, gdIOCtxPtr out)
{
 gdImagePtr pim = 0, tim = im;
 int interlace, BitsPerPixel;
 interlace = im->interlace;
 if (im->trueColor) {



  pim = gdImageCreatePaletteFromTrueColor(im, 1, 256);
  if (!pim) {
   return 1;
  }
  tim = pim;
 }
 BitsPerPixel = colorstobpp(tim->colorsTotal);

 GIFEncode(
  out, tim->sx, tim->sy, interlace, 0, tim->transparent, BitsPerPixel,
  tim->red, tim->green, tim->blue, tim);
 if (pim) {

  gdImageDestroy( pim);
 }

    return 0;
}
