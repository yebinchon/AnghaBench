
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ png_uint_32 ;
typedef int png_structp ;
typedef int png_size_t ;
typedef int png_byte ;


 int PNG_gAMA ;
 int png_debug (int,char*) ;
 int png_gAMA ;
 int png_save_uint_32 (int *,scalar_t__) ;
 int png_write_chunk (int ,int ,int *,int ) ;

void
png_write_gAMA(png_structp png_ptr, double file_gamma)
{



   png_uint_32 igamma;
   png_byte buf[4];

   png_debug(1, "in png_write_gAMA\n");

   igamma = (png_uint_32)(file_gamma * 100000.0 + 0.5);
   png_save_uint_32(buf, igamma);
   png_write_chunk(png_ptr, png_gAMA, buf, (png_size_t)4);
}
