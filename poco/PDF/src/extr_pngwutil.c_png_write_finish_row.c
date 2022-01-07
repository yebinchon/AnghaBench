
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_5__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef scalar_t__ uInt ;
typedef TYPE_1__* png_structp ;
typedef scalar_t__ png_size_t ;
struct TYPE_8__ {scalar_t__ avail_out; char* msg; int data_type; int next_out; } ;
struct TYPE_7__ {int row_number; int num_rows; int transformations; int pass; int usr_width; int width; int height; int usr_channels; int usr_bit_depth; scalar_t__ zbuf_size; TYPE_5__ zstream; int zbuf; int * prev_row; scalar_t__ interlaced; } ;


 int PNG_INTERLACE ;
 scalar_t__ PNG_ROWBYTES (int,int) ;
 int Z_BINARY ;
 int Z_FINISH ;
 int Z_OK ;
 int Z_STREAM_END ;
 int deflate (TYPE_5__*,int ) ;
 int deflateReset (TYPE_5__*) ;
 int png_debug (int,char*) ;
 int png_error (TYPE_1__*,char*) ;
 int png_memset (int *,int ,scalar_t__) ;
 int png_write_IDAT (TYPE_1__*,int ,scalar_t__) ;

void
png_write_finish_row(png_structp png_ptr)
{
   int ret;

   png_debug(1, "in png_write_finish_row\n");

   png_ptr->row_number++;


   if (png_ptr->row_number < png_ptr->num_rows)
      return;
   do
   {

      ret = deflate(&png_ptr->zstream, Z_FINISH);

      if (ret == Z_OK)
      {

         if (!(png_ptr->zstream.avail_out))
         {
            png_write_IDAT(png_ptr, png_ptr->zbuf, png_ptr->zbuf_size);
            png_ptr->zstream.next_out = png_ptr->zbuf;
            png_ptr->zstream.avail_out = (uInt)png_ptr->zbuf_size;
         }
      }
      else if (ret != Z_STREAM_END)
      {
         if (png_ptr->zstream.msg != ((void*)0))
            png_error(png_ptr, png_ptr->zstream.msg);
         else
            png_error(png_ptr, "zlib error");
      }
   } while (ret != Z_STREAM_END);


   if (png_ptr->zstream.avail_out < png_ptr->zbuf_size)
   {
      png_write_IDAT(png_ptr, png_ptr->zbuf, png_ptr->zbuf_size -
         png_ptr->zstream.avail_out);
   }

   deflateReset(&png_ptr->zstream);
   png_ptr->zstream.data_type = Z_BINARY;
}
