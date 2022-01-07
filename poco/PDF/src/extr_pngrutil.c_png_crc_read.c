
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int * png_structp ;
typedef int png_size_t ;
typedef int png_bytep ;


 int png_calculate_crc (int *,int ,int ) ;
 int png_read_data (int *,int ,int ) ;

void
png_crc_read(png_structp png_ptr, png_bytep buf, png_size_t length)
{
   if(png_ptr == ((void*)0)) return;
   png_read_data(png_ptr, buf, length);
   png_calculate_crc(png_ptr, buf, length);
}
