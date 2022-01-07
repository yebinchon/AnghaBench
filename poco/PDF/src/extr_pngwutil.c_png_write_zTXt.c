
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int png_uint_32 ;
typedef int png_structp ;
typedef scalar_t__ png_size_t ;
typedef char* png_charp ;
typedef int png_bytep ;
typedef char png_byte ;
struct TYPE_4__ {scalar_t__ input_len; int * input; int * output_ptr; scalar_t__ max_output_ptr; scalar_t__ num_output_ptr; } ;
typedef TYPE_1__ compression_state ;


 int PNG_TEXT_COMPRESSION_NONE ;
 int PNG_zTXt ;
 scalar_t__ png_check_keyword (int ,char*,char**) ;
 int png_debug (int,char*) ;
 int png_free (int ,char*) ;
 scalar_t__ png_strlen (char*) ;
 scalar_t__ png_text_compress (int ,char*,scalar_t__,int,TYPE_1__*) ;
 int png_warning (int ,char*) ;
 int png_write_chunk_data (int ,int ,scalar_t__) ;
 int png_write_chunk_end (int ) ;
 int png_write_chunk_start (int ,int ,int ) ;
 int png_write_compressed_data_out (int ,TYPE_1__*) ;
 int png_write_tEXt (int ,char*,char*,scalar_t__) ;
 int png_zTXt ;

void
png_write_zTXt(png_structp png_ptr, png_charp key, png_charp text,
   png_size_t text_len, int compression)
{



   png_size_t key_len;
   char buf[1];
   png_charp new_key;
   compression_state comp;

   png_debug(1, "in png_write_zTXt\n");

   comp.num_output_ptr = 0;
   comp.max_output_ptr = 0;
   comp.output_ptr = ((void*)0);
   comp.input = ((void*)0);
   comp.input_len = 0;

   if (key == ((void*)0) || (key_len = png_check_keyword(png_ptr, key, &new_key))==0)
   {
      png_warning(png_ptr, "Empty keyword in zTXt chunk");
      return;
   }

   if (text == ((void*)0) || *text == '\0' || compression==PNG_TEXT_COMPRESSION_NONE)
   {
      png_write_tEXt(png_ptr, new_key, text, (png_size_t)0);
      png_free(png_ptr, new_key);
      return;
   }

   text_len = png_strlen(text);


   text_len = png_text_compress(png_ptr, text, text_len, compression,
       &comp);


   png_write_chunk_start(png_ptr, png_zTXt, (png_uint_32)
      (key_len+text_len+2));

   png_write_chunk_data(png_ptr, (png_bytep)new_key, key_len + 1);
   png_free(png_ptr, new_key);

   buf[0] = (png_byte)compression;

   png_write_chunk_data(png_ptr, (png_bytep)buf, (png_size_t)1);

   png_write_compressed_data_out(png_ptr, &comp);


   png_write_chunk_end(png_ptr);
}
