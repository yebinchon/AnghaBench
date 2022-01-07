
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef TYPE_1__* png_structp ;
typedef int * png_const_charp ;
typedef char* png_charp ;
typedef char png_byte ;
struct TYPE_3__ {int* chunk_name; } ;


 int PNG_MAX_ERROR_TEXT ;
 scalar_t__ isnonalpha (int) ;
 char* png_digit ;
 int png_memcpy (char*,int *,int) ;

__attribute__((used)) static void
png_format_buffer(png_structp png_ptr, png_charp buffer, png_const_charp
   error_message)
{
   int iout = 0, iin = 0;

   while (iin < 4)
   {
      int c = png_ptr->chunk_name[iin++];
      if (isnonalpha(c))
      {
         buffer[iout++] = '[';
         buffer[iout++] = png_digit[(c & 0xf0) >> 4];
         buffer[iout++] = png_digit[c & 0x0f];
         buffer[iout++] = ']';
      }
      else
      {
         buffer[iout++] = (png_byte)c;
      }
   }

   if (error_message == ((void*)0))
      buffer[iout] = '\0';
   else
   {
      buffer[iout++] = ':';
      buffer[iout++] = ' ';
      png_memcpy(buffer+iout, error_message, PNG_MAX_ERROR_TEXT);
      buffer[iout+PNG_MAX_ERROR_TEXT-1] = '\0';
   }
}
