
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


typedef scalar_t__ uInt ;
typedef TYPE_2__* png_structrp ;
typedef int * png_bytep ;
typedef int png_byte ;
typedef scalar_t__ png_alloc_size_t ;
struct TYPE_13__ {int avail_out; scalar_t__ avail_in; char* msg; int * next_out; int * next_in; } ;
struct TYPE_14__ {scalar_t__ idat_size; scalar_t__ chunk_name; scalar_t__ IDAT_read_size; TYPE_1__ zstream; int flags; int mode; } ;


 int PNG_AFTER_IDAT ;
 int PNG_FLAG_ZSTREAM_ENDED ;
 int PNG_INFLATE (TYPE_2__*,int ) ;
 int PNG_INFLATE_BUF_SIZE ;
 scalar_t__ ZLIB_IO_MAX ;
 int Z_NO_FLUSH ;
 int Z_OK ;
 int Z_STREAM_END ;
 scalar_t__ png_IDAT ;
 int png_chunk_benign_error (TYPE_2__*,char*) ;
 int png_chunk_error (TYPE_2__*,char*) ;
 int png_crc_finish (TYPE_2__*,int ) ;
 int png_crc_read (TYPE_2__*,int *,scalar_t__) ;
 int png_error (TYPE_2__*,char*) ;
 int * png_read_buffer (TYPE_2__*,scalar_t__,int ) ;
 scalar_t__ png_read_chunk_header (TYPE_2__*) ;
 int png_zstream_error (TYPE_2__*,int) ;

void
png_read_IDAT_data(png_structrp png_ptr, png_bytep output,
    png_alloc_size_t avail_out)
{

   png_ptr->zstream.next_out = output;
   png_ptr->zstream.avail_out = 0;

   if (output == ((void*)0))
      avail_out = 0;

   do
   {
      int ret;
      png_byte tmpbuf[PNG_INFLATE_BUF_SIZE];

      if (png_ptr->zstream.avail_in == 0)
      {
         uInt avail_in;
         png_bytep buffer;

         while (png_ptr->idat_size == 0)
         {
            png_crc_finish(png_ptr, 0);

            png_ptr->idat_size = png_read_chunk_header(png_ptr);



            if (png_ptr->chunk_name != png_IDAT)
               png_error(png_ptr, "Not enough image data");
         }

         avail_in = png_ptr->IDAT_read_size;

         if (avail_in > png_ptr->idat_size)
            avail_in = (uInt)png_ptr->idat_size;






         buffer = png_read_buffer(png_ptr, avail_in, 0 );

         png_crc_read(png_ptr, buffer, avail_in);
         png_ptr->idat_size -= avail_in;

         png_ptr->zstream.next_in = buffer;
         png_ptr->zstream.avail_in = avail_in;
      }


      if (output != ((void*)0))
      {
         uInt out = ZLIB_IO_MAX;

         if (out > avail_out)
            out = (uInt)avail_out;

         avail_out -= out;
         png_ptr->zstream.avail_out = out;
      }

      else
      {
         png_ptr->zstream.next_out = tmpbuf;
         png_ptr->zstream.avail_out = (sizeof tmpbuf);
      }
      ret = PNG_INFLATE(png_ptr, Z_NO_FLUSH);


      if (output != ((void*)0))
         avail_out += png_ptr->zstream.avail_out;

      else
         avail_out += (sizeof tmpbuf) - png_ptr->zstream.avail_out;

      png_ptr->zstream.avail_out = 0;

      if (ret == Z_STREAM_END)
      {

         png_ptr->zstream.next_out = ((void*)0);

         png_ptr->mode |= PNG_AFTER_IDAT;
         png_ptr->flags |= PNG_FLAG_ZSTREAM_ENDED;

         if (png_ptr->zstream.avail_in > 0 || png_ptr->idat_size > 0)
            png_chunk_benign_error(png_ptr, "Extra compressed data");
         break;
      }

      if (ret != Z_OK)
      {
         png_zstream_error(png_ptr, ret);

         if (output != ((void*)0))
            png_chunk_error(png_ptr, png_ptr->zstream.msg);

         else
         {
            png_chunk_benign_error(png_ptr, png_ptr->zstream.msg);
            return;
         }
      }
   } while (avail_out > 0);

   if (avail_out > 0)
   {



      if (output != ((void*)0))
         png_error(png_ptr, "Not enough image data");

      else
         png_chunk_benign_error(png_ptr, "Too much image data");
   }
}
