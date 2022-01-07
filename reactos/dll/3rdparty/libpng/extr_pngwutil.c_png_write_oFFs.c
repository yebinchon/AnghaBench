
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int png_structrp ;
typedef int png_int_32 ;
typedef scalar_t__ png_byte ;


 int PNG_OFFSET_LAST ;
 int png_debug (int,char*) ;
 int png_oFFs ;
 int png_save_int_32 (scalar_t__*,int ) ;
 int png_warning (int ,char*) ;
 int png_write_complete_chunk (int ,int ,scalar_t__*,int) ;

void
png_write_oFFs(png_structrp png_ptr, png_int_32 x_offset, png_int_32 y_offset,
    int unit_type)
{
   png_byte buf[9];

   png_debug(1, "in png_write_oFFs");

   if (unit_type >= PNG_OFFSET_LAST)
      png_warning(png_ptr, "Unrecognized unit type for oFFs chunk");

   png_save_int_32(buf, x_offset);
   png_save_int_32(buf + 4, y_offset);
   buf[8] = (png_byte)unit_type;

   png_write_complete_chunk(png_ptr, png_oFFs, buf, 9);
}
