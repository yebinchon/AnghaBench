
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int png_uint_32 ;
typedef int png_structp ;
typedef int png_size_t ;
typedef scalar_t__ png_byte ;


 int PNG_RESOLUTION_LAST ;
 int PNG_pHYs ;
 int png_debug (int,char*) ;
 int png_pHYs ;
 int png_save_uint_32 (scalar_t__*,int ) ;
 int png_warning (int ,char*) ;
 int png_write_chunk (int ,int ,scalar_t__*,int ) ;

void
png_write_pHYs(png_structp png_ptr, png_uint_32 x_pixels_per_unit,
   png_uint_32 y_pixels_per_unit,
   int unit_type)
{



   png_byte buf[9];

   png_debug(1, "in png_write_pHYs\n");
   if (unit_type >= PNG_RESOLUTION_LAST)
      png_warning(png_ptr, "Unrecognized unit type for pHYs chunk");

   png_save_uint_32(buf, x_pixels_per_unit);
   png_save_uint_32(buf + 4, y_pixels_per_unit);
   buf[8] = (png_byte)unit_type;

   png_write_chunk(png_ptr, png_pHYs, buf, (png_size_t)9);
}
