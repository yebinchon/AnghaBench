
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


typedef int png_uint_32 ;
typedef TYPE_1__* png_structp ;
typedef TYPE_2__* png_infop ;
typedef scalar_t__ png_fixed_point ;
typedef int png_byte ;
struct TYPE_14__ {int valid; } ;
struct TYPE_13__ {int mode; float gamma; } ;


 int PNG_HAVE_IDAT ;
 int PNG_HAVE_IHDR ;
 int PNG_HAVE_PLTE ;
 int PNG_INFO_gAMA ;
 int PNG_INFO_sRGB ;
 scalar_t__ PNG_OUT_OF_RANGE (scalar_t__,long,int) ;
 int fprintf (int ,char*,int) ;
 scalar_t__ png_crc_finish (TYPE_1__*,int) ;
 int png_crc_read (TYPE_1__*,int *,int) ;
 int png_debug (int,char*) ;
 int png_error (TYPE_1__*,char*) ;
 scalar_t__ png_get_uint_32 (int *) ;
 int png_set_gAMA (TYPE_1__*,TYPE_2__*,float) ;
 int png_set_gAMA_fixed (TYPE_1__*,TYPE_2__*,scalar_t__) ;
 int png_warning (TYPE_1__*,char*) ;
 int stderr ;

void
png_handle_gAMA(png_structp png_ptr, png_infop info_ptr, png_uint_32 length)
{
   png_fixed_point igamma;



   png_byte buf[4];

   png_debug(1, "in png_handle_gAMA\n");

   if (!(png_ptr->mode & PNG_HAVE_IHDR))
      png_error(png_ptr, "Missing IHDR before gAMA");
   else if (png_ptr->mode & PNG_HAVE_IDAT)
   {
      png_warning(png_ptr, "Invalid gAMA after IDAT");
      png_crc_finish(png_ptr, length);
      return;
   }
   else if (png_ptr->mode & PNG_HAVE_PLTE)

      png_warning(png_ptr, "Out of place gAMA chunk");

   if (info_ptr != ((void*)0) && (info_ptr->valid & PNG_INFO_gAMA)



      )
   {
      png_warning(png_ptr, "Duplicate gAMA chunk");
      png_crc_finish(png_ptr, length);
      return;
   }

   if (length != 4)
   {
      png_warning(png_ptr, "Incorrect gAMA chunk length");
      png_crc_finish(png_ptr, length);
      return;
   }

   png_crc_read(png_ptr, buf, 4);
   if (png_crc_finish(png_ptr, 0))
      return;

   igamma = (png_fixed_point)png_get_uint_32(buf);

   if (igamma == 0)
      {
         png_warning(png_ptr,
           "Ignoring gAMA chunk with gamma=0");
         return;
      }
}
