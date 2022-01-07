
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int APREC ;
 int ZPREC ;

__attribute__((used)) static void fons__blurRows(unsigned char* dst, int w, int h, int dstStride, int alpha)
{
 int x, y;
 for (x = 0; x < w; x++) {
  int z = 0;
  for (y = dstStride; y < h*dstStride; y += dstStride) {
   z += (alpha * (((int)(dst[y]) << ZPREC) - z)) >> APREC;
   dst[y] = (unsigned char)(z >> ZPREC);
  }
  dst[(h-1)*dstStride] = 0;
  z = 0;
  for (y = (h-2)*dstStride; y >= 0; y -= dstStride) {
   z += (alpha * (((int)(dst[y]) << ZPREC) - z)) >> APREC;
   dst[y] = (unsigned char)(z >> ZPREC);
  }
  dst[0] = 0;
  dst++;
 }
}
