
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef TYPE_1__* png_structrp ;
typedef int png_byte ;
struct TYPE_4__ {int row_number; int num_rows; scalar_t__ interlaced; int iwidth; int pass; int const width; int transformations; int const height; scalar_t__ rowbytes; int prev_row; } ;


 int PNG_INTERLACE ;
 int memset (int ,int ,scalar_t__) ;
 int png_debug (int,char*) ;
 int png_read_finish_IDAT (TYPE_1__*) ;

void
png_read_finish_row(png_structrp png_ptr)
{



   static const png_byte png_pass_start[7] = {0, 4, 0, 2, 0, 1, 0};


   static const png_byte png_pass_inc[7] = {8, 8, 4, 4, 2, 2, 1};


   static const png_byte png_pass_ystart[7] = {0, 0, 4, 0, 2, 0, 1};


   static const png_byte png_pass_yinc[7] = {8, 8, 8, 4, 4, 2, 2};

   png_debug(1, "in png_read_finish_row");
   png_ptr->row_number++;
   if (png_ptr->row_number < png_ptr->num_rows)
      return;

   if (png_ptr->interlaced != 0)
   {
      png_ptr->row_number = 0;




      memset(png_ptr->prev_row, 0, png_ptr->rowbytes + 1);

      do
      {
         png_ptr->pass++;

         if (png_ptr->pass >= 7)
            break;

         png_ptr->iwidth = (png_ptr->width +
            png_pass_inc[png_ptr->pass] - 1 -
            png_pass_start[png_ptr->pass]) /
            png_pass_inc[png_ptr->pass];

         if ((png_ptr->transformations & PNG_INTERLACE) == 0)
         {
            png_ptr->num_rows = (png_ptr->height +
                png_pass_yinc[png_ptr->pass] - 1 -
                png_pass_ystart[png_ptr->pass]) /
                png_pass_yinc[png_ptr->pass];
         }

         else
            break;

      } while (png_ptr->num_rows == 0 || png_ptr->iwidth == 0);

      if (png_ptr->pass < 7)
         return;
   }


   png_read_finish_IDAT(png_ptr);
}
