
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int png_uint_32 ;
typedef int png_fixed_point ;
typedef int png_byte ;


 int png_exp (int ) ;

__attribute__((used)) static png_byte
png_exp8bit(png_fixed_point lg2)
{

   png_uint_32 x = png_exp(lg2);





   x -= x >> 8;
   return (png_byte)(((x + 0x7fffffU) >> 24) & 0xff);
}
