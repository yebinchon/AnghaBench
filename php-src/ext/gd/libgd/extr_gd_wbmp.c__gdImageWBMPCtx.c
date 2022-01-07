
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int gdImagePtr ;
typedef int gdIOCtx ;
struct TYPE_5__ {int * bitmap; } ;
typedef TYPE_1__ Wbmp ;


 int WBMP_BLACK ;
 int WBMP_WHITE ;
 TYPE_1__* createwbmp (int,int,int ) ;
 int freewbmp (TYPE_1__*) ;
 int gdImageGetPixel (int ,int,int) ;
 int gdImageSX (int ) ;
 int gdImageSY (int ) ;
 int gd_error (char*) ;
 int gd_putout ;
 scalar_t__ writewbmp (TYPE_1__*,int *,int *) ;

__attribute__((used)) static int _gdImageWBMPCtx(gdImagePtr image, int fg, gdIOCtx *out)
{
 int x, y, pos;
 Wbmp *wbmp;


 if ((wbmp = createwbmp (gdImageSX (image), gdImageSY (image), WBMP_WHITE)) == ((void*)0)) {
  gd_error("Could not create WBMP");
  return 1;
 }


 pos = 0;
 for (y = 0; y < gdImageSY(image); y++) {
  for (x = 0; x < gdImageSX(image); x++) {
   if (gdImageGetPixel (image, x, y) == fg) {
    wbmp->bitmap[pos] = WBMP_BLACK;
   }
   pos++;
  }
 }


 if (writewbmp (wbmp, &gd_putout, out)) {
  freewbmp(wbmp);
  gd_error("Could not save WBMP");
  return 1;
 }


 freewbmp(wbmp);

 return 0;
}
