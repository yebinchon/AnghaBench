
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef size_t png_uint_32 ;
typedef TYPE_1__* png_structrp ;
typedef unsigned int* png_bytep ;
typedef unsigned int png_byte ;
struct TYPE_3__ {unsigned int* try_row; unsigned int* row_buf; } ;


 unsigned int PNG_FILTER_VALUE_SUB ;
 int abs (int) ;

__attribute__((used)) static size_t
png_setup_sub_row(png_structrp png_ptr, png_uint_32 bpp,
    size_t row_bytes, size_t lmins)
{
   png_bytep rp, dp, lp;
   size_t i;
   size_t sum = 0;
   unsigned int v;

   png_ptr->try_row[0] = PNG_FILTER_VALUE_SUB;

   for (i = 0, rp = png_ptr->row_buf + 1, dp = png_ptr->try_row + 1; i < bpp;
        i++, rp++, dp++)
   {
      v = *dp = *rp;



      sum += (v < 128) ? v : 256 - v;

   }

   for (lp = png_ptr->row_buf + 1; i < row_bytes;
      i++, rp++, lp++, dp++)
   {
      v = *dp = (png_byte)(((int)*rp - (int)*lp) & 0xff);



      sum += (v < 128) ? v : 256 - v;


      if (sum > lmins)
        break;
   }

   return (sum);
}
