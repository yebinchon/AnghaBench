
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_26__ TYPE_3__ ;
typedef struct TYPE_25__ TYPE_1__ ;


typedef scalar_t__ png_uint_32 ;
typedef TYPE_1__* png_structp ;
typedef int png_row_infop ;
typedef scalar_t__ png_byte ;
struct TYPE_26__ {int color_type; scalar_t__ rowbytes; int bit_depth; int channels; int width; scalar_t__ pixel_depth; } ;
struct TYPE_25__ {int flags; int transformations; scalar_t__ num_trans; int rgb_to_gray_status; int mode; int color_type; int user_transform_depth; int user_transform_channels; TYPE_3__ row_info; int * row_buf; int (* read_user_transform_fn ) (TYPE_1__*,TYPE_3__*,int *) ;scalar_t__ filler; int shift; int dither_index; int palette_lookup; int gamma_shift; int gamma_16_table; int gamma_table; int gamma_16_to_1; int gamma_16_from_1; int gamma_to_1; int gamma_from_1; int background_1; int background; int trans_values; int trans; int palette; int pass; int row_number; } ;


 int PNG_16_TO_8 ;
 int PNG_BACKGROUND ;
 int PNG_BACKGROUND_IS_GRAY ;
 int PNG_BGR ;
 int PNG_COLOR_MASK_ALPHA ;
 int PNG_COLOR_TYPE_PALETTE ;
 int PNG_DITHER ;
 int PNG_EXPAND ;
 int PNG_EXPAND_tRNS ;
 int PNG_FILLER ;
 int PNG_FLAG_FILLER_AFTER ;
 int PNG_FLAG_ROW_INIT ;
 int PNG_FLAG_STRIP_ALPHA ;
 int PNG_GAMMA ;
 int PNG_GRAY_TO_RGB ;
 int PNG_INVERT_ALPHA ;
 int PNG_INVERT_MONO ;
 int PNG_PACK ;
 int PNG_PACKSWAP ;
 int PNG_RGB_TO_GRAY ;
 int PNG_RGB_TO_GRAY_ERR ;
 int PNG_RGB_TO_GRAY_WARN ;
 scalar_t__ PNG_ROWBYTES (scalar_t__,int ) ;
 int PNG_SHIFT ;
 int PNG_SWAP_ALPHA ;
 int PNG_SWAP_BYTES ;
 int PNG_USER_TRANSFORM ;
 int png_debug (int,char*) ;
 int png_do_background (TYPE_3__*,int *,int *,int *,int *,int ,int ,int ,int ,int ,int ,int ) ;
 int png_do_bgr (TYPE_3__*,int *) ;
 int png_do_chop (TYPE_3__*,int *) ;
 int png_do_dither (int ,int *,int ,int ) ;
 int png_do_expand (TYPE_3__*,int *,int *) ;
 int png_do_expand_palette (TYPE_3__*,int *,int ,int ,scalar_t__) ;
 int png_do_gamma (TYPE_3__*,int *,int ,int ,int ) ;
 int png_do_gray_to_rgb (TYPE_3__*,int *) ;
 int png_do_invert (TYPE_3__*,int *) ;
 int png_do_packswap (TYPE_3__*,int *) ;
 int png_do_read_filler (TYPE_3__*,int *,scalar_t__,int) ;
 int png_do_read_invert_alpha (TYPE_3__*,int *) ;
 int png_do_read_swap_alpha (TYPE_3__*,int *) ;
 int png_do_rgb_to_gray (TYPE_1__*,TYPE_3__*,int *) ;
 int png_do_strip_filler (TYPE_3__*,int *,int) ;
 int png_do_swap (TYPE_3__*,int *) ;
 int png_do_unpack (TYPE_3__*,int *) ;
 int png_do_unshift (TYPE_3__*,int *,int *) ;
 int png_error (TYPE_1__*,char*) ;
 int png_snprintf2 (char*,int,char*,int ,int ) ;
 int png_warning (TYPE_1__*,char*) ;
 int stub1 (TYPE_1__*,TYPE_3__*,int *) ;

void
png_do_read_transformations(png_structp png_ptr)
{
   png_debug(1, "in png_do_read_transformations\n");
   if (png_ptr->row_buf == ((void*)0))
   {

      char msg[50];

      png_snprintf2(msg, 50,
         "NULL row buffer for row %ld, pass %d", png_ptr->row_number,
         png_ptr->pass);
      png_error(png_ptr, msg);



   }
}
