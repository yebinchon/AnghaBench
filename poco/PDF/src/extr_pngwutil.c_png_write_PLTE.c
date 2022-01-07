
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef scalar_t__ png_uint_32 ;
typedef scalar_t__ png_uint_16 ;
typedef TYPE_1__* png_structp ;
typedef int png_size_t ;
typedef TYPE_2__* png_colorp ;
typedef int png_byte ;
struct TYPE_11__ {int blue; int green; int red; } ;
struct TYPE_10__ {int mng_features_permitted; int color_type; int mode; scalar_t__ num_palette; } ;


 int PNG_COLOR_MASK_COLOR ;
 int PNG_COLOR_TYPE_PALETTE ;
 int PNG_FLAG_MNG_EMPTY_PLTE ;
 int PNG_HAVE_PLTE ;
 int PNG_PLTE ;
 int png_PLTE ;
 int png_debug (int,char*) ;
 int png_debug1 (int,char*,scalar_t__) ;
 int png_error (TYPE_1__*,char*) ;
 int png_warning (TYPE_1__*,char*) ;
 int png_write_chunk_data (TYPE_1__*,int *,int ) ;
 int png_write_chunk_end (TYPE_1__*) ;
 int png_write_chunk_start (TYPE_1__*,int ,scalar_t__) ;

void
png_write_PLTE(png_structp png_ptr, png_colorp palette, png_uint_32 num_pal)
{



   png_uint_32 i;
   png_colorp pal_ptr;
   png_byte buf[3];

   png_debug(1, "in png_write_PLTE\n");
   if ((



        num_pal == 0) || num_pal > 256)
   {
     if (png_ptr->color_type == PNG_COLOR_TYPE_PALETTE)
     {
        png_error(png_ptr, "Invalid number of colors in palette");
     }
     else
     {
        png_warning(png_ptr, "Invalid number of colors in palette");
        return;
     }
   }

   if (!(png_ptr->color_type&PNG_COLOR_MASK_COLOR))
   {
      png_warning(png_ptr,
        "Ignoring request to write a PLTE chunk in grayscale PNG");
      return;
   }

   png_ptr->num_palette = (png_uint_16)num_pal;
   png_debug1(3, "num_palette = %d\n", png_ptr->num_palette);

   png_write_chunk_start(png_ptr, png_PLTE, num_pal * 3);

   for (i = 0, pal_ptr = palette; i < num_pal; i++, pal_ptr++)
   {
      buf[0] = pal_ptr->red;
      buf[1] = pal_ptr->green;
      buf[2] = pal_ptr->blue;
      png_write_chunk_data(png_ptr, buf, (png_size_t)3);
   }
   png_write_chunk_end(png_ptr);
   png_ptr->mode |= PNG_HAVE_PLTE;
}
