
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef TYPE_1__* png_row_infop ;
typedef size_t* png_bytep ;
struct TYPE_3__ {int bit_depth; int rowbytes; } ;


 scalar_t__ fourbppswaptable ;
 scalar_t__ onebppswaptable ;
 int png_debug (int,char*) ;
 scalar_t__ twobppswaptable ;

void
png_do_packswap(png_row_infop row_info, png_bytep row)
{
   png_debug(1, "in png_do_packswap\n");
   if (



       row_info->bit_depth < 8)
   {
      png_bytep rp, end, table;

      end = row + row_info->rowbytes;

      if (row_info->bit_depth == 1)
         table = (png_bytep)onebppswaptable;
      else if (row_info->bit_depth == 2)
         table = (png_bytep)twobppswaptable;
      else if (row_info->bit_depth == 4)
         table = (png_bytep)fourbppswaptable;
      else
         return;

      for (rp = row; rp < end; rp++)
         *rp = table[*rp];
   }
}
