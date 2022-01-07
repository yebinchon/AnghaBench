
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_1__ ;


typedef int png_uint_32 ;
typedef TYPE_1__* png_structrp ;
typedef int png_inforp ;
typedef int png_fixed_point ;
typedef int png_byte ;
struct TYPE_9__ {int mode; int colorspace; } ;


 int PNG_HAVE_IDAT ;
 int PNG_HAVE_IHDR ;
 int PNG_HAVE_PLTE ;
 int png_chunk_benign_error (TYPE_1__*,char*) ;
 int png_chunk_error (TYPE_1__*,char*) ;
 int png_colorspace_set_gamma (TYPE_1__*,int *,int ) ;
 int png_colorspace_sync (TYPE_1__*,int ) ;
 scalar_t__ png_crc_finish (TYPE_1__*,int) ;
 int png_crc_read (TYPE_1__*,int *,int) ;
 int png_debug (int,char*) ;
 int png_get_fixed_point (int *,int *) ;

void
png_handle_gAMA(png_structrp png_ptr, png_inforp info_ptr, png_uint_32 length)
{
   png_fixed_point igamma;
   png_byte buf[4];

   png_debug(1, "in png_handle_gAMA");

   if ((png_ptr->mode & PNG_HAVE_IHDR) == 0)
      png_chunk_error(png_ptr, "missing IHDR");

   else if ((png_ptr->mode & (PNG_HAVE_IDAT|PNG_HAVE_PLTE)) != 0)
   {
      png_crc_finish(png_ptr, length);
      png_chunk_benign_error(png_ptr, "out of place");
      return;
   }

   if (length != 4)
   {
      png_crc_finish(png_ptr, length);
      png_chunk_benign_error(png_ptr, "invalid");
      return;
   }

   png_crc_read(png_ptr, buf, 4);

   if (png_crc_finish(png_ptr, 0) != 0)
      return;

   igamma = png_get_fixed_point(((void*)0), buf);

   png_colorspace_set_gamma(png_ptr, &png_ptr->colorspace, igamma);
   png_colorspace_sync(png_ptr, info_ptr);
}
