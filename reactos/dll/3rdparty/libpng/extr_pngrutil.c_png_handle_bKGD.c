
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_17__ TYPE_4__ ;
typedef struct TYPE_16__ TYPE_3__ ;
typedef struct TYPE_15__ TYPE_2__ ;
typedef struct TYPE_14__ TYPE_1__ ;


typedef unsigned int png_uint_32 ;
typedef void* png_uint_16 ;
typedef TYPE_2__* png_structrp ;
typedef TYPE_3__* png_inforp ;
struct TYPE_17__ {size_t index; void* gray; void* blue; void* green; void* red; } ;
typedef TYPE_4__ png_color_16 ;
typedef size_t png_byte ;
struct TYPE_16__ {int valid; scalar_t__ num_palette; } ;
struct TYPE_15__ {int mode; int color_type; int bit_depth; TYPE_1__* palette; } ;
struct TYPE_14__ {scalar_t__ blue; scalar_t__ green; scalar_t__ red; } ;


 int PNG_COLOR_MASK_COLOR ;
 int PNG_COLOR_TYPE_PALETTE ;
 int PNG_HAVE_IDAT ;
 int PNG_HAVE_IHDR ;
 int PNG_HAVE_PLTE ;
 int PNG_INFO_bKGD ;
 int png_chunk_benign_error (TYPE_2__*,char*) ;
 int png_chunk_error (TYPE_2__*,char*) ;
 scalar_t__ png_crc_finish (TYPE_2__*,unsigned int) ;
 int png_crc_read (TYPE_2__*,size_t*,unsigned int) ;
 int png_debug (int,char*) ;
 void* png_get_uint_16 (size_t*) ;
 int png_set_bKGD (TYPE_2__*,TYPE_3__*,TYPE_4__*) ;

void
png_handle_bKGD(png_structrp png_ptr, png_inforp info_ptr, png_uint_32 length)
{
   unsigned int truelen;
   png_byte buf[6];
   png_color_16 background;

   png_debug(1, "in png_handle_bKGD");

   if ((png_ptr->mode & PNG_HAVE_IHDR) == 0)
      png_chunk_error(png_ptr, "missing IHDR");

   else if ((png_ptr->mode & PNG_HAVE_IDAT) != 0 ||
       (png_ptr->color_type == PNG_COLOR_TYPE_PALETTE &&
       (png_ptr->mode & PNG_HAVE_PLTE) == 0))
   {
      png_crc_finish(png_ptr, length);
      png_chunk_benign_error(png_ptr, "out of place");
      return;
   }

   else if (info_ptr != ((void*)0) && (info_ptr->valid & PNG_INFO_bKGD) != 0)
   {
      png_crc_finish(png_ptr, length);
      png_chunk_benign_error(png_ptr, "duplicate");
      return;
   }

   if (png_ptr->color_type == PNG_COLOR_TYPE_PALETTE)
      truelen = 1;

   else if ((png_ptr->color_type & PNG_COLOR_MASK_COLOR) != 0)
      truelen = 6;

   else
      truelen = 2;

   if (length != truelen)
   {
      png_crc_finish(png_ptr, length);
      png_chunk_benign_error(png_ptr, "invalid");
      return;
   }

   png_crc_read(png_ptr, buf, truelen);

   if (png_crc_finish(png_ptr, 0) != 0)
      return;






   if (png_ptr->color_type == PNG_COLOR_TYPE_PALETTE)
   {
      background.index = buf[0];

      if (info_ptr != ((void*)0) && info_ptr->num_palette != 0)
      {
         if (buf[0] >= info_ptr->num_palette)
         {
            png_chunk_benign_error(png_ptr, "invalid index");
            return;
         }

         background.red = (png_uint_16)png_ptr->palette[buf[0]].red;
         background.green = (png_uint_16)png_ptr->palette[buf[0]].green;
         background.blue = (png_uint_16)png_ptr->palette[buf[0]].blue;
      }

      else
         background.red = background.green = background.blue = 0;

      background.gray = 0;
   }

   else if ((png_ptr->color_type & PNG_COLOR_MASK_COLOR) == 0)
   {
      if (png_ptr->bit_depth <= 8)
      {
         if (buf[0] != 0 || buf[1] >= (unsigned int)(1 << png_ptr->bit_depth))
         {
            png_chunk_benign_error(png_ptr, "invalid gray level");
            return;
         }
      }

      background.index = 0;
      background.red =
      background.green =
      background.blue =
      background.gray = png_get_uint_16(buf);
   }

   else
   {
      if (png_ptr->bit_depth <= 8)
      {
         if (buf[0] != 0 || buf[2] != 0 || buf[4] != 0)
         {
            png_chunk_benign_error(png_ptr, "invalid color");
            return;
         }
      }

      background.index = 0;
      background.red = png_get_uint_16(buf);
      background.green = png_get_uint_16(buf + 2);
      background.blue = png_get_uint_16(buf + 4);
      background.gray = 0;
   }

   png_set_bKGD(png_ptr, info_ptr, &background);
}
