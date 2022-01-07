
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef scalar_t__ uInt ;
typedef scalar_t__ png_uint_32 ;
typedef TYPE_2__* png_structp ;
typedef scalar_t__ png_size_t ;
typedef void* png_bytep ;
struct TYPE_5__ {int next_out; scalar_t__ avail_out; } ;
struct TYPE_6__ {int usr_channels; int usr_bit_depth; int width; int do_filter; int transformations; int num_rows; int height; int usr_width; int zbuf; TYPE_1__ zstream; scalar_t__ zbuf_size; scalar_t__ interlaced; int * paeth_row; scalar_t__ rowbytes; int * avg_row; int * up_row; void* prev_row; int * sub_row; int * row_buf; } ;


 int PNG_FILTER_AVG ;
 int PNG_FILTER_PAETH ;
 int PNG_FILTER_SUB ;
 int PNG_FILTER_UP ;
 int PNG_FILTER_VALUE_AVG ;
 int PNG_FILTER_VALUE_NONE ;
 int PNG_FILTER_VALUE_PAETH ;
 int PNG_FILTER_VALUE_SUB ;
 int PNG_FILTER_VALUE_UP ;
 int PNG_INTERLACE ;
 scalar_t__ PNG_ROWBYTES (int,int) ;
 int png_debug (int,char*) ;
 scalar_t__ png_malloc (TYPE_2__*,scalar_t__) ;
 int png_memset (void*,int ,scalar_t__) ;

void
png_write_start_row(png_structp png_ptr)
{
   png_size_t buf_size;

   png_debug(1, "in png_write_start_row\n");
   buf_size = (png_size_t)(PNG_ROWBYTES(
      png_ptr->usr_channels*png_ptr->usr_bit_depth,png_ptr->width)+1);


   png_ptr->row_buf = (png_bytep)png_malloc(png_ptr, (png_uint_32)buf_size);
   png_ptr->row_buf[0] = PNG_FILTER_VALUE_NONE;



   if (png_ptr->do_filter & PNG_FILTER_SUB)
   {
      png_ptr->sub_row = (png_bytep)png_malloc(png_ptr,
         (png_ptr->rowbytes + 1));
      png_ptr->sub_row[0] = PNG_FILTER_VALUE_SUB;
   }


   if (png_ptr->do_filter & (PNG_FILTER_AVG | PNG_FILTER_UP | PNG_FILTER_PAETH))
   {

      png_ptr->prev_row = (png_bytep)png_malloc(png_ptr, (png_uint_32)buf_size);
      png_memset(png_ptr->prev_row, 0, buf_size);

      if (png_ptr->do_filter & PNG_FILTER_UP)
      {
         png_ptr->up_row = (png_bytep)png_malloc(png_ptr,
            (png_ptr->rowbytes + 1));
         png_ptr->up_row[0] = PNG_FILTER_VALUE_UP;
      }

      if (png_ptr->do_filter & PNG_FILTER_AVG)
      {
         png_ptr->avg_row = (png_bytep)png_malloc(png_ptr,
            (png_ptr->rowbytes + 1));
         png_ptr->avg_row[0] = PNG_FILTER_VALUE_AVG;
      }

      if (png_ptr->do_filter & PNG_FILTER_PAETH)
      {
         png_ptr->paeth_row = (png_bytep)png_malloc(png_ptr,
            (png_ptr->rowbytes + 1));
         png_ptr->paeth_row[0] = PNG_FILTER_VALUE_PAETH;
      }

   }
   {
      png_ptr->num_rows = png_ptr->height;
      png_ptr->usr_width = png_ptr->width;
   }
   png_ptr->zstream.avail_out = (uInt)png_ptr->zbuf_size;
   png_ptr->zstream.next_out = png_ptr->zbuf;
}
