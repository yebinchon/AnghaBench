
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef TYPE_1__* png_structp ;
typedef TYPE_2__* png_infop ;
typedef scalar_t__ png_byte ;
struct TYPE_6__ {int color_type; int bit_depth; int channels; int width; scalar_t__ pixel_depth; int rowbytes; int int_gamma; int gamma; int background; scalar_t__ num_trans; } ;
struct TYPE_5__ {int transformations; int flags; int user_transform_depth; int user_transform_channels; scalar_t__ palette_lookup; int int_gamma; int gamma; int background; scalar_t__ num_trans; } ;


 int PNG_16_TO_8 ;
 int PNG_ADD_ALPHA ;
 int PNG_BACKGROUND ;
 int PNG_COLOR_MASK_ALPHA ;
 int PNG_COLOR_MASK_COLOR ;
 int PNG_COLOR_TYPE_GRAY ;
 int PNG_COLOR_TYPE_PALETTE ;
 int PNG_COLOR_TYPE_RGB ;
 int PNG_COLOR_TYPE_RGB_ALPHA ;
 int PNG_DITHER ;
 int PNG_EXPAND ;
 int PNG_EXPAND_tRNS ;
 int PNG_FILLER ;
 int PNG_FLAG_STRIP_ALPHA ;
 int PNG_GAMMA ;
 int PNG_GRAY_TO_RGB ;
 int PNG_PACK ;
 int PNG_RGB_TO_GRAY ;
 int PNG_ROWBYTES (scalar_t__,int ) ;
 int PNG_USER_TRANSFORM ;
 int png_debug (int,char*) ;

void
png_read_transform_info(png_structp png_ptr, png_infop info_ptr)
{
   png_debug(1, "in png_read_transform_info\n");
   if (info_ptr->color_type == PNG_COLOR_TYPE_PALETTE)
      info_ptr->channels = 1;
   else if (info_ptr->color_type & PNG_COLOR_MASK_COLOR)
      info_ptr->channels = 3;
   else
      info_ptr->channels = 1;






   if (info_ptr->color_type & PNG_COLOR_MASK_ALPHA)
      info_ptr->channels++;
   info_ptr->pixel_depth = (png_byte)(info_ptr->channels *
      info_ptr->bit_depth);

   info_ptr->rowbytes = PNG_ROWBYTES(info_ptr->pixel_depth,info_ptr->width);


   if(png_ptr)
      return;

}
