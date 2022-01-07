
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef TYPE_1__* png_structp ;
struct TYPE_11__ {int width; int pixel_depth; int rowbytes; int bit_depth; int channels; int color_type; } ;
struct TYPE_10__ {int transformations; int flags; int pass; int height; scalar_t__* row_buf; scalar_t__ interlaced; scalar_t__ rowbytes; scalar_t__ prev_row; TYPE_4__ row_info; int pixel_depth; int bit_depth; int channels; int iwidth; int color_type; } ;


 int PNG_FLAG_STRIP_ALPHA ;
 int PNG_INTERLACE ;
 int PNG_ROWBYTES (int ,int ) ;
 scalar_t__* png_bytep_NULL ;
 int png_do_read_interlace (TYPE_1__*) ;
 int png_do_read_transformations (TYPE_1__*) ;
 int png_memcpy_check (TYPE_1__*,scalar_t__,scalar_t__*,scalar_t__) ;
 int png_push_have_row (TYPE_1__*,scalar_t__*) ;
 int png_read_filter_row (TYPE_1__*,TYPE_4__*,scalar_t__*,scalar_t__,int) ;
 int png_read_push_finish_row (TYPE_1__*) ;

void
png_push_process_row(png_structp png_ptr)
{
   png_ptr->row_info.color_type = png_ptr->color_type;
   png_ptr->row_info.width = png_ptr->iwidth;
   png_ptr->row_info.channels = png_ptr->channels;
   png_ptr->row_info.bit_depth = png_ptr->bit_depth;
   png_ptr->row_info.pixel_depth = png_ptr->pixel_depth;

   png_ptr->row_info.rowbytes = PNG_ROWBYTES(png_ptr->row_info.pixel_depth,
       png_ptr->row_info.width);

   png_read_filter_row(png_ptr, &(png_ptr->row_info),
      png_ptr->row_buf + 1, png_ptr->prev_row + 1,
      (int)(png_ptr->row_buf[0]));

   png_memcpy_check(png_ptr, png_ptr->prev_row, png_ptr->row_buf,
      png_ptr->rowbytes + 1);

   if (png_ptr->transformations || (png_ptr->flags&PNG_FLAG_STRIP_ALPHA))
      png_do_read_transformations(png_ptr);
   {
      png_push_have_row(png_ptr, png_ptr->row_buf + 1);
      png_read_push_finish_row(png_ptr);
   }
}
