
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


typedef int t_chunk_info ;
typedef TYPE_1__* gdImagePtr ;
typedef int gdIOCtxPtr ;
struct TYPE_7__ {int colorsTotal; } ;


 int GD2_DBG (int ) ;
 int _gd2GetHeader (int ,int*,int*,int*,int*,int*,int*,int*,int **) ;
 int _gdGetColors (int ,TYPE_1__*,int) ;
 scalar_t__ gd2_truecolor (int) ;
 int gdFree (int *) ;
 TYPE_1__* gdImageCreate (int,int) ;
 TYPE_1__* gdImageCreateTrueColor (int,int) ;
 int gdImageDestroy (TYPE_1__*) ;
 int gd_error (char*,...) ;

__attribute__((used)) static gdImagePtr _gd2CreateFromFile (gdIOCtxPtr in, int *sx, int *sy, int *cs, int *vers, int *fmt, int *ncx, int *ncy, t_chunk_info ** cidx)
{
 gdImagePtr im;

 if (_gd2GetHeader (in, sx, sy, cs, vers, fmt, ncx, ncy, cidx) != 1) {
  GD2_DBG(gd_error("Bad GD2 header"));
  goto fail1;
 }

 if (gd2_truecolor(*fmt)) {
  im = gdImageCreateTrueColor(*sx, *sy);
 } else {
  im = gdImageCreate(*sx, *sy);
 }
 if (im == ((void*)0)) {
  GD2_DBG(gd_error("Could not create gdImage"));
  goto fail2;
 }

 if (!_gdGetColors(in, im, (*vers) == 2)) {
  GD2_DBG(gd_error("Could not read color palette"));
  goto fail3;
 }
 GD2_DBG(gd_error("Image palette completed: %d colours", im->colorsTotal));

 return im;

fail3:
 gdImageDestroy(im);
fail2:
 gdFree(*cidx);
fail1:
 return 0;
}
