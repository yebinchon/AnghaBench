
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_1__ ;


typedef TYPE_1__* png_structp ;
typedef int png_infop ;
struct TYPE_10__ {int process_mode; int buffer_size; } ;
 int png_push_crc_finish (TYPE_1__*) ;
 int png_push_read_IDAT (TYPE_1__*) ;
 int png_push_read_chunk (TYPE_1__*,int ) ;
 int png_push_read_iTXt (TYPE_1__*,int ) ;
 int png_push_read_sig (TYPE_1__*,int ) ;
 int png_push_read_tEXt (TYPE_1__*,int ) ;
 int png_push_read_zTXt (TYPE_1__*,int ) ;

void
png_process_some_data(png_structp png_ptr, png_infop info_ptr)
{
   if(png_ptr == ((void*)0)) return;
   switch (png_ptr->process_mode)
   {
      case 132:
      {
         png_push_read_sig(png_ptr, info_ptr);
         break;
      }
      case 134:
      {
         png_push_read_chunk(png_ptr, info_ptr);
         break;
      }
      case 133:
      {
         png_push_read_IDAT(png_ptr);
         break;
      }
      case 128:
      {
         png_push_crc_finish(png_ptr);
         break;
      }
      default:
      {
         png_ptr->buffer_size = 0;
         break;
      }
   }
}
