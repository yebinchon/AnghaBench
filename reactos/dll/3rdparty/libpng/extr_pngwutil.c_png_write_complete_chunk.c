
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int png_uint_32 ;
typedef int * png_structrp ;
typedef int png_const_bytep ;


 size_t PNG_UINT_31_MAX ;
 int png_error (int *,char*) ;
 int png_write_chunk_data (int *,int ,size_t) ;
 int png_write_chunk_end (int *) ;
 int png_write_chunk_header (int *,int ,int ) ;

__attribute__((used)) static void
png_write_complete_chunk(png_structrp png_ptr, png_uint_32 chunk_name,
    png_const_bytep data, size_t length)
{
   if (png_ptr == ((void*)0))
      return;


   if (length > PNG_UINT_31_MAX)
      png_error(png_ptr, "length exceeds PNG maximum");

   png_write_chunk_header(png_ptr, chunk_name, (png_uint_32)length);
   png_write_chunk_data(png_ptr, data, length);
   png_write_chunk_end(png_ptr);
}
