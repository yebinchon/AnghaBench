
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ png_uint_32 ;
typedef int png_structp ;
typedef int png_size_t ;
typedef int* png_charp ;
typedef int* png_bytep ;
struct TYPE_4__ {scalar_t__ input_len; int * input; int * output_ptr; scalar_t__ max_output_ptr; scalar_t__ num_output_ptr; } ;
typedef TYPE_1__ compression_state ;


 int PNG_COMPRESSION_TYPE_BASE ;
 int PNG_iCCP ;
 int png_check_keyword (int ,int*,int**) ;
 int png_debug (int,char*) ;
 int png_free (int ,int*) ;
 int png_iCCP ;
 int png_text_compress (int ,int*,int,int,TYPE_1__*) ;
 int png_warning (int ,char*) ;
 int png_write_chunk_data (int ,int*,int) ;
 int png_write_chunk_end (int ) ;
 int png_write_chunk_start (int ,int ,scalar_t__) ;
 int png_write_compressed_data_out (int ,TYPE_1__*) ;

void
png_write_iCCP(png_structp png_ptr, png_charp name, int compression_type,
   png_charp profile, int profile_len)
{



   png_size_t name_len;
   png_charp new_name;
   compression_state comp;
   int embedded_profile_len = 0;

   png_debug(1, "in png_write_iCCP\n");

   comp.num_output_ptr = 0;
   comp.max_output_ptr = 0;
   comp.output_ptr = ((void*)0);
   comp.input = ((void*)0);
   comp.input_len = 0;

   if (name == ((void*)0) || (name_len = png_check_keyword(png_ptr, name,
      &new_name)) == 0)
   {
      png_warning(png_ptr, "Empty keyword in iCCP chunk");
      return;
   }

   if (compression_type != PNG_COMPRESSION_TYPE_BASE)
      png_warning(png_ptr, "Unknown compression type in iCCP chunk");

   if (profile == ((void*)0))
      profile_len = 0;

   if (profile_len > 3)
      embedded_profile_len =
          ((*( (png_bytep)profile ))<<24) |
          ((*( (png_bytep)profile+1))<<16) |
          ((*( (png_bytep)profile+2))<< 8) |
          ((*( (png_bytep)profile+3)) );

   if (profile_len < embedded_profile_len)
     {
        png_warning(png_ptr,
          "Embedded profile length too large in iCCP chunk");
        return;
     }

   if (profile_len > embedded_profile_len)
     {
        png_warning(png_ptr,
          "Truncating profile to actual length in iCCP chunk");
        profile_len = embedded_profile_len;
     }

   if (profile_len)
       profile_len = png_text_compress(png_ptr, profile, (png_size_t)profile_len,
          PNG_COMPRESSION_TYPE_BASE, &comp);


   png_write_chunk_start(png_ptr, png_iCCP,
          (png_uint_32)name_len+profile_len+2);
   new_name[name_len+1]=0x00;
   png_write_chunk_data(png_ptr, (png_bytep)new_name, name_len + 2);

   if (profile_len)
      png_write_compressed_data_out(png_ptr, &comp);

   png_write_chunk_end(png_ptr);
   png_free(png_ptr, new_name);
}
