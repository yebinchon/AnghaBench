
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef scalar_t__ uInt ;
typedef scalar_t__* png_uint_32p ;
typedef TYPE_2__* png_structrp ;
typedef void* png_bytep ;
typedef scalar_t__ png_alloc_size_t ;
struct TYPE_7__ {scalar_t__ avail_out; scalar_t__ avail_in; int msg; void* next_in; void* next_out; } ;
struct TYPE_8__ {scalar_t__ zowner; scalar_t__ chunk_name; TYPE_1__ zstream; } ;


 int PNGZ_MSG_CAST (char*) ;
 int PNG_INFLATE (TYPE_2__*,int ) ;
 scalar_t__ ZLIB_IO_MAX ;
 int Z_FINISH ;
 int Z_NO_FLUSH ;
 int Z_OK ;
 int Z_STREAM_ERROR ;
 int Z_SYNC_FLUSH ;
 int png_crc_read (TYPE_2__*,void*,scalar_t__) ;
 int png_zstream_error (TYPE_2__*,int) ;

__attribute__((used)) static int
png_inflate_read(png_structrp png_ptr, png_bytep read_buffer, uInt read_size,
    png_uint_32p chunk_bytes, png_bytep next_out, png_alloc_size_t *out_size,
    int finish)
{
   if (png_ptr->zowner == png_ptr->chunk_name)
   {
      int ret;


      png_ptr->zstream.next_out = next_out;
      png_ptr->zstream.avail_out = 0;

      do
      {
         if (png_ptr->zstream.avail_in == 0)
         {
            if (read_size > *chunk_bytes)
               read_size = (uInt)*chunk_bytes;
            *chunk_bytes -= read_size;

            if (read_size > 0)
               png_crc_read(png_ptr, read_buffer, read_size);

            png_ptr->zstream.next_in = read_buffer;
            png_ptr->zstream.avail_in = read_size;
         }

         if (png_ptr->zstream.avail_out == 0)
         {
            uInt avail = ZLIB_IO_MAX;
            if (avail > *out_size)
               avail = (uInt)*out_size;
            *out_size -= avail;

            png_ptr->zstream.avail_out = avail;
         }





         ret = PNG_INFLATE(png_ptr, *chunk_bytes > 0 ?
             Z_NO_FLUSH : (finish ? Z_FINISH : Z_SYNC_FLUSH));
      }
      while (ret == Z_OK && (*out_size > 0 || png_ptr->zstream.avail_out > 0));

      *out_size += png_ptr->zstream.avail_out;
      png_ptr->zstream.avail_out = 0;


      png_zstream_error(png_ptr, ret);
      return ret;
   }

   else
   {
      png_ptr->zstream.msg = PNGZ_MSG_CAST("zstream unclaimed");
      return Z_STREAM_ERROR;
   }
}
