
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int png_uint_32 ;
typedef TYPE_1__* png_const_structrp ;
struct TYPE_5__ {int user_width_max; int user_height_max; int mode; int mng_features_permitted; } ;


 int PNG_COLOR_TYPE_GRAY_ALPHA ;
 int PNG_COLOR_TYPE_PALETTE ;
 int PNG_COLOR_TYPE_RGB ;
 int PNG_COLOR_TYPE_RGB_ALPHA ;
 int PNG_COMPRESSION_TYPE_BASE ;
 int PNG_FILTER_TYPE_BASE ;
 int PNG_FLAG_MNG_FILTER_64 ;
 int PNG_HAVE_PNG_SIGNATURE ;
 int PNG_INTERLACE_LAST ;
 int PNG_INTRAPIXEL_DIFFERENCING ;
 int PNG_SIZE_MAX ;
 int PNG_UINT_31_MAX ;
 int PNG_USER_HEIGHT_MAX ;
 int PNG_USER_WIDTH_MAX ;
 int png_error (TYPE_1__*,char*) ;
 scalar_t__ png_gt (int,int) ;
 int png_warning (TYPE_1__*,char*) ;

void
png_check_IHDR(png_const_structrp png_ptr,
    png_uint_32 width, png_uint_32 height, int bit_depth,
    int color_type, int interlace_type, int compression_type,
    int filter_type)
{
   int error = 0;


   if (width == 0)
   {
      png_warning(png_ptr, "Image width is zero in IHDR");
      error = 1;
   }

   if (width > PNG_UINT_31_MAX)
   {
      png_warning(png_ptr, "Invalid image width in IHDR");
      error = 1;
   }

   if (png_gt(((width + 7) & (~7U)),
       ((PNG_SIZE_MAX
           - 48
           - 1)
           / 8)
           - 1))
   {
      png_warning(png_ptr, "Image width is too large for this architecture");
      error = 1;
   }




   if (width > PNG_USER_WIDTH_MAX)

   {
      png_warning(png_ptr, "Image width exceeds user limit in IHDR");
      error = 1;
   }

   if (height == 0)
   {
      png_warning(png_ptr, "Image height is zero in IHDR");
      error = 1;
   }

   if (height > PNG_UINT_31_MAX)
   {
      png_warning(png_ptr, "Invalid image height in IHDR");
      error = 1;
   }




   if (height > PNG_USER_HEIGHT_MAX)

   {
      png_warning(png_ptr, "Image height exceeds user limit in IHDR");
      error = 1;
   }


   if (bit_depth != 1 && bit_depth != 2 && bit_depth != 4 &&
       bit_depth != 8 && bit_depth != 16)
   {
      png_warning(png_ptr, "Invalid bit depth in IHDR");
      error = 1;
   }

   if (color_type < 0 || color_type == 1 ||
       color_type == 5 || color_type > 6)
   {
      png_warning(png_ptr, "Invalid color type in IHDR");
      error = 1;
   }

   if (((color_type == PNG_COLOR_TYPE_PALETTE) && bit_depth > 8) ||
       ((color_type == PNG_COLOR_TYPE_RGB ||
         color_type == PNG_COLOR_TYPE_GRAY_ALPHA ||
         color_type == PNG_COLOR_TYPE_RGB_ALPHA) && bit_depth < 8))
   {
      png_warning(png_ptr, "Invalid color type/bit depth combination in IHDR");
      error = 1;
   }

   if (interlace_type >= PNG_INTERLACE_LAST)
   {
      png_warning(png_ptr, "Unknown interlace method in IHDR");
      error = 1;
   }

   if (compression_type != PNG_COMPRESSION_TYPE_BASE)
   {
      png_warning(png_ptr, "Unknown compression method in IHDR");
      error = 1;
   }
   if (filter_type != PNG_FILTER_TYPE_BASE)
   {
      png_warning(png_ptr, "Unknown filter method in IHDR");
      error = 1;
   }


   if (error == 1)
      png_error(png_ptr, "Invalid IHDR data");
}
