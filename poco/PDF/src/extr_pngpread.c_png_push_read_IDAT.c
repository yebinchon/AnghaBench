
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_1__ ;


typedef scalar_t__ png_uint_32 ;
typedef TYPE_1__* png_structp ;
typedef scalar_t__ png_size_t ;
typedef int png_byte ;
struct TYPE_12__ {int mode; int buffer_size; scalar_t__ push_length; int flags; scalar_t__ idat_size; scalar_t__ save_buffer_size; scalar_t__ current_buffer_size; int current_buffer_ptr; int save_buffer_ptr; int process_mode; int chunk_name; } ;
typedef int PNG_CONST ;


 int PNG_AFTER_IDAT ;
 int PNG_FLAG_ZLIB_FINISHED ;
 int PNG_HAVE_CHUNK_HEADER ;
 int PNG_READ_CHUNK_MODE ;
 int png_IDAT ;
 int png_calculate_crc (TYPE_1__*,int ,scalar_t__) ;
 int png_crc_finish (TYPE_1__*,int ) ;
 int png_crc_read (TYPE_1__*,int ,int) ;
 int png_error (TYPE_1__*,char*) ;
 scalar_t__ png_get_uint_31 (TYPE_1__*,int *) ;
 scalar_t__ png_memcmp (int ,int ,int) ;
 int png_process_IDAT_data (TYPE_1__*,int ,scalar_t__) ;
 int png_push_fill_buffer (TYPE_1__*,int *,int) ;
 int png_push_save_buffer (TYPE_1__*) ;
 int png_reset_crc (TYPE_1__*) ;

void
png_push_read_IDAT(png_structp png_ptr)
{



   if (!(png_ptr->mode & PNG_HAVE_CHUNK_HEADER))
   {
      png_byte chunk_length[4];

      if (png_ptr->buffer_size < 8)
      {
         png_push_save_buffer(png_ptr);
         return;
      }

      png_push_fill_buffer(png_ptr, chunk_length, 4);
      png_ptr->push_length = png_get_uint_31(png_ptr,chunk_length);
      png_reset_crc(png_ptr);
      png_crc_read(png_ptr, png_ptr->chunk_name, 4);
      png_ptr->mode |= PNG_HAVE_CHUNK_HEADER;

      if (png_memcmp(png_ptr->chunk_name, png_IDAT, 4))
      {
         png_ptr->process_mode = PNG_READ_CHUNK_MODE;
         if (!(png_ptr->flags & PNG_FLAG_ZLIB_FINISHED))
            png_error(png_ptr, "Not enough compressed data");
         return;
      }

      png_ptr->idat_size = png_ptr->push_length;
   }
   if (png_ptr->idat_size && png_ptr->save_buffer_size)
   {
      png_size_t save_size;

      if (png_ptr->idat_size < (png_uint_32)png_ptr->save_buffer_size)
      {
         save_size = (png_size_t)png_ptr->idat_size;

         if((png_uint_32)save_size != png_ptr->idat_size)
            png_error(png_ptr, "save_size overflowed in pngpread");
      }
      else
         save_size = png_ptr->save_buffer_size;

      png_calculate_crc(png_ptr, png_ptr->save_buffer_ptr, save_size);
      if (!(png_ptr->flags & PNG_FLAG_ZLIB_FINISHED))
         png_process_IDAT_data(png_ptr, png_ptr->save_buffer_ptr, save_size);
      png_ptr->idat_size -= save_size;
      png_ptr->buffer_size -= save_size;
      png_ptr->save_buffer_size -= save_size;
      png_ptr->save_buffer_ptr += save_size;
   }
   if (png_ptr->idat_size && png_ptr->current_buffer_size)
   {
      png_size_t save_size;

      if (png_ptr->idat_size < (png_uint_32)png_ptr->current_buffer_size)
      {
         save_size = (png_size_t)png_ptr->idat_size;

         if((png_uint_32)save_size != png_ptr->idat_size)
            png_error(png_ptr, "save_size overflowed in pngpread");
      }
      else
         save_size = png_ptr->current_buffer_size;

      png_calculate_crc(png_ptr, png_ptr->current_buffer_ptr, save_size);
      if (!(png_ptr->flags & PNG_FLAG_ZLIB_FINISHED))
        png_process_IDAT_data(png_ptr, png_ptr->current_buffer_ptr, save_size);

      png_ptr->idat_size -= save_size;
      png_ptr->buffer_size -= save_size;
      png_ptr->current_buffer_size -= save_size;
      png_ptr->current_buffer_ptr += save_size;
   }
   if (!png_ptr->idat_size)
   {
      if (png_ptr->buffer_size < 4)
      {
         png_push_save_buffer(png_ptr);
         return;
      }

      png_crc_finish(png_ptr, 0);
      png_ptr->mode &= ~PNG_HAVE_CHUNK_HEADER;
      png_ptr->mode |= PNG_AFTER_IDAT;
   }
}
