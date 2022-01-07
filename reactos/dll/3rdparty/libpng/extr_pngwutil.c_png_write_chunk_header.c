
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef scalar_t__ png_uint_32 ;
typedef TYPE_1__* png_structrp ;
typedef int png_byte ;
struct TYPE_6__ {void* io_state; scalar_t__ chunk_name; } ;


 int PNG_CSTRING_FROM_CHUNK (int *,scalar_t__) ;
 void* PNG_IO_CHUNK_DATA ;
 void* PNG_IO_CHUNK_HDR ;
 void* PNG_IO_WRITING ;
 int png_calculate_crc (TYPE_1__*,int *,int) ;
 int png_debug2 (int ,char*,int *,unsigned long) ;
 int png_reset_crc (TYPE_1__*) ;
 int png_save_uint_32 (int *,scalar_t__) ;
 int png_write_data (TYPE_1__*,int *,int) ;

__attribute__((used)) static void
png_write_chunk_header(png_structrp png_ptr, png_uint_32 chunk_name,
    png_uint_32 length)
{
   png_byte buf[8];






   if (png_ptr == ((void*)0))
      return;
   png_save_uint_32(buf, length);
   png_save_uint_32(buf + 4, chunk_name);
   png_write_data(png_ptr, buf, 8);


   png_ptr->chunk_name = chunk_name;


   png_reset_crc(png_ptr);

   png_calculate_crc(png_ptr, buf + 4, 4);







}
