
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_19__ TYPE_3__ ;
typedef struct TYPE_18__ TYPE_2__ ;
typedef struct TYPE_17__ TYPE_1__ ;


typedef int png_uint_32 ;
typedef scalar_t__ png_uint_16 ;
typedef TYPE_1__* png_structp ;
typedef TYPE_2__* png_infop ;
typedef TYPE_3__* png_colorp ;
struct TYPE_19__ {void* blue; void* green; void* red; } ;
typedef TYPE_3__ png_color ;
typedef void* png_byte ;
struct TYPE_18__ {int valid; scalar_t__ num_trans; } ;
struct TYPE_17__ {int mode; int color_type; int flags; scalar_t__ num_trans; } ;


 int PNG_COLOR_MASK_COLOR ;
 int PNG_COLOR_TYPE_PALETTE ;
 int PNG_FLAG_CRC_ANCILLARY_NOWARN ;
 int PNG_FLAG_CRC_ANCILLARY_USE ;
 int PNG_HAVE_IDAT ;
 int PNG_HAVE_IHDR ;
 int PNG_HAVE_PLTE ;
 int PNG_INFO_tRNS ;
 int PNG_MAX_PALETTE_LENGTH ;
 int png_chunk_error (TYPE_1__*,char*) ;
 int png_chunk_warning (TYPE_1__*,char*) ;
 scalar_t__ png_crc_error (TYPE_1__*) ;
 int png_crc_finish (TYPE_1__*,int) ;
 int png_crc_read (TYPE_1__*,void**,int) ;
 int png_debug (int,char*) ;
 int png_error (TYPE_1__*,char*) ;
 int png_set_PLTE (TYPE_1__*,TYPE_2__*,TYPE_3__*,int) ;
 int png_warning (TYPE_1__*,char*) ;

void
png_handle_PLTE(png_structp png_ptr, png_infop info_ptr, png_uint_32 length)
{
   png_color palette[PNG_MAX_PALETTE_LENGTH];
   int num, i;

   png_colorp pal_ptr;


   png_debug(1, "in png_handle_PLTE\n");

   if (!(png_ptr->mode & PNG_HAVE_IHDR))
      png_error(png_ptr, "Missing IHDR before PLTE");
   else if (png_ptr->mode & PNG_HAVE_IDAT)
   {
      png_warning(png_ptr, "Invalid PLTE after IDAT");
      png_crc_finish(png_ptr, length);
      return;
   }
   else if (png_ptr->mode & PNG_HAVE_PLTE)
      png_error(png_ptr, "Duplicate PLTE chunk");

   png_ptr->mode |= PNG_HAVE_PLTE;

   if (!(png_ptr->color_type&PNG_COLOR_MASK_COLOR))
   {
      png_warning(png_ptr,
        "Ignoring PLTE chunk in grayscale PNG");
      png_crc_finish(png_ptr, length);
      return;
   }

   if (png_ptr->color_type != PNG_COLOR_TYPE_PALETTE)
   {
      png_crc_finish(png_ptr, length);
      return;
   }


   if (length > 3*PNG_MAX_PALETTE_LENGTH || length % 3)
   {
      if (png_ptr->color_type != PNG_COLOR_TYPE_PALETTE)
      {
         png_warning(png_ptr, "Invalid palette chunk");
         png_crc_finish(png_ptr, length);
         return;
      }
      else
      {
         png_error(png_ptr, "Invalid palette chunk");
      }
   }

   num = (int)length / 3;


   for (i = 0, pal_ptr = palette; i < num; i++, pal_ptr++)
   {
      png_byte buf[3];

      png_crc_read(png_ptr, buf, 3);
      pal_ptr->red = buf[0];
      pal_ptr->green = buf[1];
      pal_ptr->blue = buf[2];
   }
   if (png_ptr->color_type == PNG_COLOR_TYPE_PALETTE)

   {
      png_crc_finish(png_ptr, 0);
   }

   else if (png_crc_error(png_ptr))
   {




      if (!(png_ptr->flags & PNG_FLAG_CRC_ANCILLARY_USE))
      {
         if (png_ptr->flags & PNG_FLAG_CRC_ANCILLARY_NOWARN)
         {
            png_chunk_error(png_ptr, "CRC error");
         }
         else
         {
            png_chunk_warning(png_ptr, "CRC error");
            return;
         }
      }

      else if (!(png_ptr->flags & PNG_FLAG_CRC_ANCILLARY_NOWARN))
      {
         png_chunk_warning(png_ptr, "CRC error");
      }
   }


   png_set_PLTE(png_ptr, info_ptr, palette, num);
}
