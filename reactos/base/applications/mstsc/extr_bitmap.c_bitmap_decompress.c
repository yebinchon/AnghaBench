
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8 ;
typedef int RD_BOOL ;


 int False ;
 int bitmap_decompress1 (int *,int,int,int *,int) ;
 int bitmap_decompress2 (int *,int,int,int *,int) ;
 int bitmap_decompress3 (int *,int,int,int *,int) ;
 int bitmap_decompress4 (int *,int,int,int *,int) ;
 int unimpl (char*,int) ;

RD_BOOL
bitmap_decompress(uint8 * output, int width, int height, uint8 * input, int size, int Bpp)
{
 RD_BOOL rv = False;

 switch (Bpp)
 {
  case 1:
   rv = bitmap_decompress1(output, width, height, input, size);
   break;
  case 2:
   rv = bitmap_decompress2(output, width, height, input, size);
   break;
  case 3:
   rv = bitmap_decompress3(output, width, height, input, size);
   break;
  case 4:
   rv = bitmap_decompress4(output, width, height, input, size);
   break;
  default:
   unimpl("Bpp %d\n", Bpp);
   break;
 }
 return rv;
}
