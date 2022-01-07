
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef void* png_uint_16 ;
typedef TYPE_3__* png_structrp ;
struct TYPE_6__ {int gray; void* blue; void* green; void* red; } ;
struct TYPE_5__ {int gray; void* blue; void* green; void* red; } ;
struct TYPE_7__ {int color_type; scalar_t__ num_trans; int transformations; int bit_depth; TYPE_2__ trans_color; TYPE_1__ background; int flags; } ;


 int PNG_BACKGROUND_EXPAND ;
 int PNG_COLOR_MASK_ALPHA ;
 int PNG_COLOR_MASK_COLOR ;
 int PNG_COMPOSE ;
 int PNG_ENCODE_ALPHA ;
 int PNG_EXPAND ;
 int PNG_EXPAND_tRNS ;
 int PNG_FLAG_OPTIMIZE_ALPHA ;

__attribute__((used)) static void
png_init_rgb_transformations(png_structrp png_ptr)
{




   int input_has_alpha = (png_ptr->color_type & PNG_COLOR_MASK_ALPHA) != 0;
   int input_has_transparency = png_ptr->num_trans > 0;


   if (input_has_alpha == 0)
   {
      if (input_has_transparency == 0)
         png_ptr->transformations &= ~(PNG_COMPOSE | PNG_BACKGROUND_EXPAND);
   }
}
