
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int png_structrp ;
typedef int png_const_charp ;
typedef scalar_t__ png_byte ;


 int memcpy (scalar_t__*,int ,size_t) ;
 int png_debug (int,char*) ;
 int png_debug1 (int,char*,unsigned int) ;
 int png_sCAL ;
 int png_warning (int ,char*) ;
 int png_write_complete_chunk (int ,int ,scalar_t__*,size_t) ;
 size_t strlen (int ) ;

void
png_write_sCAL_s(png_structrp png_ptr, int unit, png_const_charp width,
    png_const_charp height)
{
   png_byte buf[64];
   size_t wlen, hlen, total_len;

   png_debug(1, "in png_write_sCAL_s");

   wlen = strlen(width);
   hlen = strlen(height);
   total_len = wlen + hlen + 2;

   if (total_len > 64)
   {
      png_warning(png_ptr, "Can't write sCAL (buffer too small)");
      return;
   }

   buf[0] = (png_byte)unit;
   memcpy(buf + 1, width, wlen + 1);
   memcpy(buf + wlen + 2, height, hlen);

   png_debug1(3, "sCAL total length = %u", (unsigned int)total_len);
   png_write_complete_chunk(png_ptr, png_sCAL, buf, total_len);
}
