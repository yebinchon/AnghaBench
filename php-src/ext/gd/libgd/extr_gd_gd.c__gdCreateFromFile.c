
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int gdImagePtr ;
typedef int gdIOCtx ;


 int GD2_DBG (int ) ;
 int _gdGetColors (int *,int ,int) ;
 int gdGetWord (int*,int *) ;
 int gdImageCreate (int,int) ;
 int gdImageCreateTrueColor (int,int) ;
 int gdImageDestroy (int ) ;
 int printf (char*,int,int) ;

__attribute__((used)) static gdImagePtr _gdCreateFromFile (gdIOCtx * in, int *sx, int *sy)
{
 gdImagePtr im;
 int gd2xFlag = 0;
 int trueColorFlag = 0;

 if (!gdGetWord(sx, in)) {
  goto fail1;
 }
 if (*sx == 65535 || *sx == 65534) {

  gd2xFlag = 1;

  if (*sx == 65534) {
   trueColorFlag = 1;
  }
  if (!gdGetWord(sx, in)) {
   goto fail1;
  }
 }
 if (!gdGetWord(sy, in)) {
  goto fail1;
 }

 GD2_DBG(printf("Image is %dx%d\n", *sx, *sy));

 if (trueColorFlag) {
  im = gdImageCreateTrueColor(*sx, *sy);
 } else {
  im = gdImageCreate(*sx, *sy);
 }
 if(!im) {
  goto fail1;
 }
 if (!_gdGetColors(in, im, gd2xFlag)) {
  goto fail2;
 }

 return im;
fail2:
 gdImageDestroy(im);
fail1:
 return 0;
}
