
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FONScontext ;


 int APREC ;
 float expf (float) ;
 int fons__blurCols (unsigned char*,int,int,int,int) ;
 int fons__blurRows (unsigned char*,int,int,int,int) ;

__attribute__((used)) static void fons__blur(FONScontext* stash, unsigned char* dst, int w, int h, int dstStride, int blur)
{
 int alpha;
 float sigma;
 (void)stash;

 if (blur < 1)
  return;

 sigma = (float)blur * 0.57735f;
 alpha = (int)((1<<APREC) * (1.0f - expf(-2.3f / (sigma+1.0f))));
 fons__blurRows(dst, w, h, dstStride, alpha);
 fons__blurCols(dst, w, h, dstStride, alpha);
 fons__blurRows(dst, w, h, dstStride, alpha);
 fons__blurCols(dst, w, h, dstStride, alpha);


}
