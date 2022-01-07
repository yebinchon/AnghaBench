
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


typedef int png_uint_32 ;
typedef int * png_uint_16p ;
typedef TYPE_1__* png_structp ;
typedef int png_size_t ;
typedef int png_byte ;
struct TYPE_7__ {scalar_t__ num_palette; } ;


 int PNG_hIST ;
 int png_debug (int,char*) ;
 int png_debug2 (int,char*,int,scalar_t__) ;
 int png_hIST ;
 int png_save_uint_16 (int *,int ) ;
 int png_warning (TYPE_1__*,char*) ;
 int png_write_chunk_data (TYPE_1__*,int *,int ) ;
 int png_write_chunk_end (TYPE_1__*) ;
 int png_write_chunk_start (TYPE_1__*,int ,int ) ;

void
png_write_hIST(png_structp png_ptr, png_uint_16p hist, int num_hist)
{



   int i;
   png_byte buf[3];

   png_debug(1, "in png_write_hIST\n");
   if (num_hist > (int)png_ptr->num_palette)
   {
      png_debug2(3, "num_hist = %d, num_palette = %d\n", num_hist,
         png_ptr->num_palette);
      png_warning(png_ptr, "Invalid number of histogram entries specified");
      return;
   }

   png_write_chunk_start(png_ptr, png_hIST, (png_uint_32)(num_hist * 2));
   for (i = 0; i < num_hist; i++)
   {
      png_save_uint_16(buf, hist[i]);
      png_write_chunk_data(png_ptr, buf, (png_size_t)2);
   }
   png_write_chunk_end(png_ptr);
}
