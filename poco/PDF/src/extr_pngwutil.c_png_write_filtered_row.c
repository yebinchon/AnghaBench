
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_8__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef void* uInt ;
typedef TYPE_2__* png_structp ;
typedef int * png_bytep ;
struct TYPE_11__ {char* msg; void* avail_out; int next_out; void* avail_in; int * next_in; } ;
struct TYPE_9__ {scalar_t__ rowbytes; } ;
struct TYPE_10__ {scalar_t__ flush_rows; scalar_t__ flush_dist; int * row_buf; int * prev_row; scalar_t__ zbuf_size; TYPE_8__ zstream; int zbuf; TYPE_1__ row_info; } ;


 int Z_NO_FLUSH ;
 int Z_OK ;
 int deflate (TYPE_8__*,int ) ;
 int png_debug (int,char*) ;
 int png_debug1 (int,char*,int ) ;
 int png_error (TYPE_2__*,char*) ;
 int png_write_IDAT (TYPE_2__*,int ,scalar_t__) ;
 int png_write_finish_row (TYPE_2__*) ;
 int png_write_flush (TYPE_2__*) ;

void
png_write_filtered_row(png_structp png_ptr, png_bytep filtered_row)
{
   png_debug(1, "in png_write_filtered_row\n");
   png_debug1(2, "filter = %d\n", filtered_row[0]);


   png_ptr->zstream.next_in = filtered_row;
   png_ptr->zstream.avail_in = (uInt)png_ptr->row_info.rowbytes + 1;

   do
   {
      int ret;


      ret = deflate(&png_ptr->zstream, Z_NO_FLUSH);

      if (ret != Z_OK)
      {
         if (png_ptr->zstream.msg != ((void*)0))
            png_error(png_ptr, png_ptr->zstream.msg);
         else
            png_error(png_ptr, "zlib error");
      }


      if (!(png_ptr->zstream.avail_out))
      {

         png_write_IDAT(png_ptr, png_ptr->zbuf, png_ptr->zbuf_size);
         png_ptr->zstream.next_out = png_ptr->zbuf;
         png_ptr->zstream.avail_out = (uInt)png_ptr->zbuf_size;
      }

   } while (png_ptr->zstream.avail_in);


   if (png_ptr->prev_row != ((void*)0))
   {
      png_bytep tptr;

      tptr = png_ptr->prev_row;
      png_ptr->prev_row = png_ptr->row_buf;
      png_ptr->row_buf = tptr;
   }


   png_write_finish_row(png_ptr);
}
