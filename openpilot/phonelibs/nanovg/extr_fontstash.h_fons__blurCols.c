
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int APREC ;
 int ZPREC ;

__attribute__((used)) static void fons__blurCols(unsigned char* dst, int w, int h, int dstStride, int alpha)
{
 int x, y;
 for (y = 0; y < h; y++) {
  int z = 0;
  for (x = 1; x < w; x++) {
   z += (alpha * (((int)(dst[x]) << ZPREC) - z)) >> APREC;
   dst[x] = (unsigned char)(z >> ZPREC);
  }
  dst[w-1] = 0;
  z = 0;
  for (x = w-2; x >= 0; x--) {
   z += (alpha * (((int)(dst[x]) << ZPREC) - z)) >> APREC;
   dst[x] = (unsigned char)(z >> ZPREC);
  }
  dst[0] = 0;
  dst += dstStride;
 }
}
