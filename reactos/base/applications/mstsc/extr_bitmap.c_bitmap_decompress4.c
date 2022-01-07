
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8 ;
typedef int RD_BOOL ;


 int CVAL (int *) ;
 int False ;
 int process_plane (int *,int,int,int *,int) ;

__attribute__((used)) static RD_BOOL
bitmap_decompress4(uint8 * output, int width, int height, uint8 * input, int size)
{
 int code;
 int bytes_pro;
 int total_pro;

 code = CVAL(input);
 if (code != 0x10)
 {
  return False;
 }
 total_pro = 1;
 bytes_pro = process_plane(input, width, height, output + 3, size - total_pro);
 total_pro += bytes_pro;
 input += bytes_pro;
 bytes_pro = process_plane(input, width, height, output + 2, size - total_pro);
 total_pro += bytes_pro;
 input += bytes_pro;
 bytes_pro = process_plane(input, width, height, output + 1, size - total_pro);
 total_pro += bytes_pro;
 input += bytes_pro;
 bytes_pro = process_plane(input, width, height, output + 0, size - total_pro);
 total_pro += bytes_pro;
 return size == total_pro;
}
