
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef TYPE_1__* png_structp ;
typedef int png_size_t ;
typedef TYPE_2__* png_color_16p ;
typedef int png_byte ;
struct TYPE_8__ {scalar_t__ index; int red; int green; int blue; int gray; } ;
struct TYPE_7__ {scalar_t__ num_palette; int mng_features_permitted; int bit_depth; } ;


 int PNG_COLOR_MASK_COLOR ;
 int PNG_COLOR_TYPE_PALETTE ;
 int PNG_FLAG_MNG_EMPTY_PLTE ;
 int PNG_bKGD ;
 int png_bKGD ;
 int png_debug (int,char*) ;
 int png_save_uint_16 (int*,int) ;
 int png_warning (TYPE_1__*,char*) ;
 int png_write_chunk (TYPE_1__*,int ,int*,int ) ;

void
png_write_bKGD(png_structp png_ptr, png_color_16p back, int color_type)
{



   png_byte buf[6];

   png_debug(1, "in png_write_bKGD\n");
   if (color_type == PNG_COLOR_TYPE_PALETTE)
   {
      if (




         back->index > png_ptr->num_palette)
      {
         png_warning(png_ptr, "Invalid background palette index");
         return;
      }
      buf[0] = back->index;
      png_write_chunk(png_ptr, png_bKGD, buf, (png_size_t)1);
   }
   else if (color_type & PNG_COLOR_MASK_COLOR)
   {
      png_save_uint_16(buf, back->red);
      png_save_uint_16(buf + 2, back->green);
      png_save_uint_16(buf + 4, back->blue);
      if(png_ptr->bit_depth == 8 && (buf[0] | buf[2] | buf[4]))
         {
            png_warning(png_ptr,
              "Ignoring attempt to write 16-bit bKGD chunk when bit_depth is 8");
            return;
         }
      png_write_chunk(png_ptr, png_bKGD, buf, (png_size_t)6);
   }
   else
   {
      if(back->gray >= (1 << png_ptr->bit_depth))
      {
         png_warning(png_ptr,
           "Ignoring attempt to write bKGD chunk out-of-range for bit_depth");
         return;
      }
      png_save_uint_16(buf, back->gray);
      png_write_chunk(png_ptr, png_bKGD, buf, (png_size_t)2);
   }
}
