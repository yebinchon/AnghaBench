
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef size_t png_uint_32 ;
typedef TYPE_1__* png_structrp ;
typedef int * png_bytep ;
typedef void* png_byte ;
struct TYPE_3__ {int * row_buf; int * prev_row; int * try_row; } ;


 int PNG_FILTER_VALUE_AVG ;

__attribute__((used)) static void
png_setup_avg_row_only(png_structrp png_ptr, png_uint_32 bpp,
    size_t row_bytes)
{
   png_bytep rp, dp, pp, lp;
   png_uint_32 i;

   png_ptr->try_row[0] = PNG_FILTER_VALUE_AVG;

   for (i = 0, rp = png_ptr->row_buf + 1, dp = png_ptr->try_row + 1,
       pp = png_ptr->prev_row + 1; i < bpp; i++)
   {
      *dp++ = (png_byte)(((int)*rp++ - ((int)*pp++ / 2)) & 0xff);
   }

   for (lp = png_ptr->row_buf + 1; i < row_bytes; i++)
   {
      *dp++ = (png_byte)(((int)*rp++ - (((int)*pp++ + (int)*lp++) / 2))
          & 0xff);
   }
}
