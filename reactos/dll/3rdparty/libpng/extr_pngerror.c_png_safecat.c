
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char* png_const_charp ;
typedef char* png_charp ;



size_t
png_safecat(png_charp buffer, size_t bufsize, size_t pos,
    png_const_charp string)
{
   if (buffer != ((void*)0) && pos < bufsize)
   {
      if (string != ((void*)0))
         while (*string != '\0' && pos < bufsize-1)
           buffer[pos++] = *string++;

      buffer[pos] = '\0';
   }

   return pos;
}
