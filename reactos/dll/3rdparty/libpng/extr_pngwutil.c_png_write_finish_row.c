
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef TYPE_1__* png_structrp ;
typedef int png_byte ;
struct TYPE_4__ {int row_number; int num_rows; scalar_t__ interlaced; int transformations; int pass; int usr_width; int const width; int const height; int usr_channels; int usr_bit_depth; int * prev_row; } ;


 int PNG_INTERLACE ;
 scalar_t__ PNG_ROWBYTES (int,int const) ;
 int Z_FINISH ;
 int memset (int *,int ,scalar_t__) ;
 int png_compress_IDAT (TYPE_1__*,int *,int ,int ) ;
 int png_debug (int,char*) ;

void
png_write_finish_row(png_structrp png_ptr)
{
   png_debug(1, "in png_write_finish_row");


   png_ptr->row_number++;


   if (png_ptr->row_number < png_ptr->num_rows)
      return;
   png_compress_IDAT(png_ptr, ((void*)0), 0, Z_FINISH);
}
