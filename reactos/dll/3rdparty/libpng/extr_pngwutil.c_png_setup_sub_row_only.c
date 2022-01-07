
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef size_t png_uint_32 ;
typedef TYPE_1__* png_structrp ;
typedef scalar_t__* png_bytep ;
typedef scalar_t__ png_byte ;
struct TYPE_3__ {scalar_t__* row_buf; scalar_t__* try_row; } ;


 scalar_t__ PNG_FILTER_VALUE_SUB ;

__attribute__((used)) static void
png_setup_sub_row_only(png_structrp png_ptr, png_uint_32 bpp,
    size_t row_bytes)
{
   png_bytep rp, dp, lp;
   size_t i;

   png_ptr->try_row[0] = PNG_FILTER_VALUE_SUB;

   for (i = 0, rp = png_ptr->row_buf + 1, dp = png_ptr->try_row + 1; i < bpp;
        i++, rp++, dp++)
   {
      *dp = *rp;
   }

   for (lp = png_ptr->row_buf + 1; i < row_bytes;
      i++, rp++, lp++, dp++)
   {
      *dp = (png_byte)(((int)*rp - (int)*lp) & 0xff);
   }
}
