
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef TYPE_1__* png_structrp ;
typedef TYPE_2__* png_const_color_16p ;
typedef int* png_const_bytep ;
typedef int png_byte ;
struct TYPE_8__ {int gray; int red; int green; int blue; } ;
struct TYPE_7__ {int bit_depth; scalar_t__ num_palette; } ;


 int PNG_COLOR_TYPE_GRAY ;
 int PNG_COLOR_TYPE_PALETTE ;
 int PNG_COLOR_TYPE_RGB ;
 int png_app_warning (TYPE_1__*,char*) ;
 int png_debug (int,char*) ;
 int png_save_uint_16 (int*,int) ;
 int png_tRNS ;
 int png_write_complete_chunk (TYPE_1__*,int ,int*,int) ;

void
png_write_tRNS(png_structrp png_ptr, png_const_bytep trans_alpha,
    png_const_color_16p tran, int num_trans, int color_type)
{
   png_byte buf[6];

   png_debug(1, "in png_write_tRNS");

   if (color_type == PNG_COLOR_TYPE_PALETTE)
   {
      if (num_trans <= 0 || num_trans > (int)png_ptr->num_palette)
      {
         png_app_warning(png_ptr,
             "Invalid number of transparent colors specified");
         return;
      }


      png_write_complete_chunk(png_ptr, png_tRNS, trans_alpha,
          (size_t)num_trans);
   }

   else if (color_type == PNG_COLOR_TYPE_GRAY)
   {

      if (tran->gray >= (1 << png_ptr->bit_depth))
      {
         png_app_warning(png_ptr,
             "Ignoring attempt to write tRNS chunk out-of-range for bit_depth");

         return;
      }

      png_save_uint_16(buf, tran->gray);
      png_write_complete_chunk(png_ptr, png_tRNS, buf, 2);
   }

   else if (color_type == PNG_COLOR_TYPE_RGB)
   {

      png_save_uint_16(buf, tran->red);
      png_save_uint_16(buf + 2, tran->green);
      png_save_uint_16(buf + 4, tran->blue);



      if ((buf[0] | buf[2] | buf[4]) != 0)

      {
         png_app_warning(png_ptr,
             "Ignoring attempt to write 16-bit tRNS chunk when bit_depth is 8");
         return;
      }

      png_write_complete_chunk(png_ptr, png_tRNS, buf, 6);
   }

   else
   {
      png_app_warning(png_ptr, "Can't write tRNS with an alpha channel");
   }
}
