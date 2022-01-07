
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef TYPE_1__* png_structrp ;
typedef int png_byte ;
typedef scalar_t__ png_alloc_size_t ;
struct TYPE_5__ {int usr_channels; int usr_bit_depth; int width; int maximum_pixel_depth; int do_filter; int height; scalar_t__ interlaced; int transformations; int num_rows; int usr_width; void* prev_row; void* tst_row; int * try_row; int * row_buf; int pixel_depth; int transformed_pixel_depth; } ;


 int PNG_FILTER_AVG ;
 int PNG_FILTER_NONE ;
 int PNG_FILTER_PAETH ;
 int PNG_FILTER_SUB ;
 int PNG_FILTER_UP ;
 int PNG_FILTER_VALUE_NONE ;
 int PNG_INTERLACE ;
 scalar_t__ PNG_ROWBYTES (int,int) ;
 int png_bytep ;
 int png_calloc (TYPE_1__*,scalar_t__) ;
 int png_debug (int,char*) ;
 int png_malloc (TYPE_1__*,scalar_t__) ;
 void* png_voidcast (int ,int ) ;

void
png_write_start_row(png_structrp png_ptr)
{
   png_alloc_size_t buf_size;
   int usr_pixel_depth;





   png_debug(1, "in png_write_start_row");

   usr_pixel_depth = png_ptr->usr_channels * png_ptr->usr_bit_depth;
   buf_size = PNG_ROWBYTES(usr_pixel_depth, png_ptr->width) + 1;


   png_ptr->transformed_pixel_depth = png_ptr->pixel_depth;
   png_ptr->maximum_pixel_depth = (png_byte)usr_pixel_depth;


   png_ptr->row_buf = png_voidcast(png_bytep, png_malloc(png_ptr, buf_size));

   png_ptr->row_buf[0] = PNG_FILTER_VALUE_NONE;
   {
      png_ptr->num_rows = png_ptr->height;
      png_ptr->usr_width = png_ptr->width;
   }
}
