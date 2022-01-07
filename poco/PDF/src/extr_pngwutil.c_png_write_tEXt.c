
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ png_uint_32 ;
typedef int png_structp ;
typedef scalar_t__ png_size_t ;
typedef char* png_charp ;
typedef int png_bytep ;


 int PNG_tEXt ;
 scalar_t__ png_check_keyword (int ,char*,char**) ;
 int png_debug (int,char*) ;
 int png_free (int ,char*) ;
 scalar_t__ png_strlen (char*) ;
 int png_tEXt ;
 int png_warning (int ,char*) ;
 int png_write_chunk_data (int ,int ,scalar_t__) ;
 int png_write_chunk_end (int ) ;
 int png_write_chunk_start (int ,int ,scalar_t__) ;

void
png_write_tEXt(png_structp png_ptr, png_charp key, png_charp text,
   png_size_t text_len)
{



   png_size_t key_len;
   png_charp new_key;

   png_debug(1, "in png_write_tEXt\n");
   if (key == ((void*)0) || (key_len = png_check_keyword(png_ptr, key, &new_key))==0)
   {
      png_warning(png_ptr, "Empty keyword in tEXt chunk");
      return;
   }

   if (text == ((void*)0) || *text == '\0')
      text_len = 0;
   else
      text_len = png_strlen(text);


   png_write_chunk_start(png_ptr, png_tEXt, (png_uint_32)key_len+text_len+1);






   png_write_chunk_data(png_ptr, (png_bytep)new_key, key_len + 1);
   if (text_len)
      png_write_chunk_data(png_ptr, (png_bytep)text, text_len);

   png_write_chunk_end(png_ptr);
   png_free(png_ptr, new_key);
}
