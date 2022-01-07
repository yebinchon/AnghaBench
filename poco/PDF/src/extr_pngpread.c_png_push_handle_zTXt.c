
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


typedef int png_uint_32 ;
typedef TYPE_1__* png_structp ;
typedef void* png_size_t ;
typedef int png_infop ;
typedef char* png_charp ;
struct TYPE_7__ {int mode; char* current_text; char* current_text_ptr; int process_mode; void* current_text_left; void* current_text_size; } ;


 int PNG_HAVE_IEND ;
 int PNG_HAVE_IHDR ;
 int PNG_READ_zTXt_MODE ;
 int png_error (TYPE_1__*,char*) ;
 scalar_t__ png_malloc (TYPE_1__*,int) ;
 int png_push_crc_skip (TYPE_1__*,int) ;
 int png_warning (TYPE_1__*,char*) ;

void
png_push_handle_zTXt(png_structp png_ptr, png_infop info_ptr, png_uint_32
   length)
{
   if (!(png_ptr->mode & PNG_HAVE_IHDR) || (png_ptr->mode & PNG_HAVE_IEND))
      {
         png_error(png_ptr, "Out of place zTXt");
         info_ptr = info_ptr;
      }
   png_ptr->current_text = (png_charp)png_malloc(png_ptr,
       (png_uint_32)(length+1));
   png_ptr->current_text[length] = '\0';
   png_ptr->current_text_ptr = png_ptr->current_text;
   png_ptr->current_text_size = (png_size_t)length;
   png_ptr->current_text_left = (png_size_t)length;
   png_ptr->process_mode = PNG_READ_zTXt_MODE;
}
