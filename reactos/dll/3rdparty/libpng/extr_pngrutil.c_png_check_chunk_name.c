
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int png_uint_32 ;
typedef int png_const_structrp ;


 int png_chunk_error (int ,char*) ;
 int png_debug (int,char*) ;

void
png_check_chunk_name(png_const_structrp png_ptr, png_uint_32 chunk_name)
{
   int i;
   png_uint_32 cn=chunk_name;

   png_debug(1, "in png_check_chunk_name");

   for (i=1; i<=4; ++i)
   {
      int c = cn & 0xff;

      if (c < 65 || c > 122 || (c > 90 && c < 97))
         png_chunk_error(png_ptr, "invalid chunk type");

      cn >>= 8;
   }
}
