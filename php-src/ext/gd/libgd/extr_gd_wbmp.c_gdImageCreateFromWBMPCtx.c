
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int * gdImagePtr ;
typedef int gdIOCtx ;
struct TYPE_4__ {int width; int height; scalar_t__* bitmap; } ;
typedef TYPE_1__ Wbmp ;


 scalar_t__ WBMP_WHITE ;
 int freewbmp (TYPE_1__*) ;
 int gdImageColorAllocate (int *,int,int,int) ;
 int * gdImageCreate (int,int) ;
 int gdImageSetPixel (int *,int,int,int) ;
 int gd_getin ;
 scalar_t__ readwbmp (int *,int *,TYPE_1__**) ;

gdImagePtr gdImageCreateFromWBMPCtx (gdIOCtx * infile)
{

 Wbmp *wbmp;
 gdImagePtr im = ((void*)0);
 int black, white;
 int col, row, pos;

 if (readwbmp (&gd_getin, infile, &wbmp)) {
  return ((void*)0);
 }

 if (!(im = gdImageCreate (wbmp->width, wbmp->height))) {
  freewbmp (wbmp);
  return ((void*)0);
 }


 white = gdImageColorAllocate(im, 255, 255, 255);

 black = gdImageColorAllocate(im, 0, 0, 0);


 pos = 0;
 for (row = 0; row < wbmp->height; row++) {
  for (col = 0; col < wbmp->width; col++) {
   if (wbmp->bitmap[pos++] == WBMP_WHITE) {
    gdImageSetPixel(im, col, row, white);
   } else {
    gdImageSetPixel(im, col, row, black);
   }
  }
 }

 freewbmp(wbmp);

 return im;
}
