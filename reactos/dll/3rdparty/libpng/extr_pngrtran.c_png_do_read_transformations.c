
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_40__ TYPE_2__ ;
typedef struct TYPE_39__ TYPE_1__ ;


typedef int png_uint_32 ;
typedef TYPE_1__* png_structrp ;
typedef TYPE_2__* png_row_infop ;
typedef int * png_bytep ;
typedef scalar_t__ png_byte ;
struct TYPE_40__ {int color_type; scalar_t__ rowbytes; scalar_t__ bit_depth; scalar_t__ channels; int width; scalar_t__ pixel_depth; } ;
struct TYPE_39__ {int flags; int transformations; scalar_t__ num_trans; int bit_depth; int rgb_to_gray_status; int mode; int color_type; scalar_t__ num_palette_max; scalar_t__ user_transform_depth; scalar_t__ user_transform_channels; int * row_buf; int (* read_user_transform_fn ) (TYPE_1__*,TYPE_2__*,int *) ;scalar_t__ filler; int shift; int quantize_index; int palette_lookup; int trans_color; int trans_alpha; int palette; int * riffled_palette; } ;


 int PNG_16_TO_8 ;
 int PNG_BACKGROUND_IS_GRAY ;
 int PNG_BGR ;
 int PNG_COLOR_MASK_ALPHA ;
 int PNG_COLOR_TYPE_GRAY_ALPHA ;
 int PNG_COLOR_TYPE_PALETTE ;
 int PNG_COLOR_TYPE_RGB_ALPHA ;
 int PNG_COMPOSE ;
 int PNG_ENCODE_ALPHA ;
 int PNG_EXPAND ;
 int PNG_EXPAND_16 ;
 int PNG_EXPAND_tRNS ;
 int PNG_FILLER ;
 int PNG_FLAG_DETECT_UNINITIALIZED ;
 int PNG_FLAG_ROW_INIT ;
 int PNG_GAMMA ;
 int PNG_GRAY_TO_RGB ;
 int PNG_INVERT_ALPHA ;
 int PNG_INVERT_MONO ;
 int PNG_PACK ;
 int PNG_PACKSWAP ;
 int PNG_QUANTIZE ;
 int PNG_RGB_TO_GRAY ;
 int PNG_RGB_TO_GRAY_ERR ;
 int PNG_RGB_TO_GRAY_WARN ;
 scalar_t__ PNG_ROWBYTES (scalar_t__,int ) ;
 int PNG_SCALE_16_TO_8 ;
 int PNG_SHIFT ;
 int PNG_STRIP_ALPHA ;
 int PNG_SWAP_ALPHA ;
 int PNG_SWAP_BYTES ;
 int PNG_USER_TRANSFORM ;
 int png_debug (int,char*) ;
 int png_do_bgr (TYPE_2__*,int *) ;
 int png_do_check_palette_indexes (TYPE_1__*,TYPE_2__*) ;
 int png_do_chop (TYPE_2__*,int *) ;
 int png_do_compose (TYPE_2__*,int *,TYPE_1__*) ;
 int png_do_encode_alpha (TYPE_2__*,int *,TYPE_1__*) ;
 int png_do_expand (TYPE_2__*,int *,int *) ;
 int png_do_expand_16 (TYPE_2__*,int *) ;
 int png_do_expand_palette (TYPE_1__*,TYPE_2__*,int *,int ,int ,scalar_t__) ;
 int png_do_gamma (TYPE_2__*,int *,TYPE_1__*) ;
 int png_do_gray_to_rgb (TYPE_2__*,int *) ;
 int png_do_invert (TYPE_2__*,int *) ;
 int png_do_packswap (TYPE_2__*,int *) ;
 int png_do_quantize (TYPE_2__*,int *,int ,int ) ;
 int png_do_read_filler (TYPE_2__*,int *,int ,int) ;
 int png_do_read_invert_alpha (TYPE_2__*,int *) ;
 int png_do_read_swap_alpha (TYPE_2__*,int *) ;
 int png_do_rgb_to_gray (TYPE_1__*,TYPE_2__*,int *) ;
 int png_do_scale_16_to_8 (TYPE_2__*,int *) ;
 int png_do_strip_channel (TYPE_2__*,int *,int ) ;
 int png_do_swap (TYPE_2__*,int *) ;
 int png_do_unpack (TYPE_2__*,int *) ;
 int png_do_unshift (TYPE_2__*,int *,int *) ;
 int png_error (TYPE_1__*,char*) ;
 scalar_t__ png_malloc (TYPE_1__*,int) ;
 int png_riffle_palette_neon (TYPE_1__*) ;
 int png_warning (TYPE_1__*,char*) ;
 int stub1 (TYPE_1__*,TYPE_2__*,int *) ;

void
png_do_read_transformations(png_structrp png_ptr, png_row_infop row_info)
{
   png_debug(1, "in png_do_read_transformations");

   if (png_ptr->row_buf == ((void*)0))
   {




      png_error(png_ptr, "NULL row buffer");
   }







   if ((png_ptr->flags & PNG_FLAG_DETECT_UNINITIALIZED) != 0 &&
       (png_ptr->flags & PNG_FLAG_ROW_INIT) == 0)
   {




      png_error(png_ptr, "Uninitialized row");
   }
}
