
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef TYPE_1__* gdImagePtr ;
typedef int gdIOCtxPtr ;
struct TYPE_5__ {int** tpixels; int** pixels; scalar_t__ trueColor; } ;


 int EOF ;
 TYPE_1__* _gdCreateFromFile (int ,int*,int*) ;
 int gdGetC (int ) ;
 int gdGetInt (int*,int ) ;
 int gdImageDestroy (TYPE_1__*) ;

gdImagePtr gdImageCreateFromGdCtx (gdIOCtxPtr in)
{
 int sx, sy;
 int x, y;
 gdImagePtr im;


 im = _gdCreateFromFile(in, &sx, &sy);

 if (im == ((void*)0)) {
  goto fail1;
 }



 if (im->trueColor) {
  for (y = 0; y < sy; y++) {
   for (x = 0; x < sx; x++) {
    int pix;
    if (!gdGetInt(&pix, in)) {
     goto fail2;
    }
    im->tpixels[y][x] = pix;
   }
  }
 } else {
  for (y = 0; y < sy; y++) {
   for (x = 0; x < sx; x++) {
    int ch;
    ch = gdGetC(in);
    if (ch == EOF) {
     goto fail2;
    }

    im->pixels[y][x] = ch;
   }
  }
 }

 return im;

fail2:
 gdImageDestroy (im);
fail1:
 return 0;
}
