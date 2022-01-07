
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int stbi_uc ;
typedef int stbi__uint16 ;
typedef int stbi__context ;


 int stbi__get16le (int *) ;

void stbi__tga_read_rgb16(stbi__context *s, stbi_uc* out)
{
   stbi__uint16 px = stbi__get16le(s);
   stbi__uint16 fiveBitMask = 31;

   int r = (px >> 10) & fiveBitMask;
   int g = (px >> 5) & fiveBitMask;
   int b = px & fiveBitMask;

   out[0] = (r * 255)/31;
   out[1] = (g * 255)/31;
   out[2] = (b * 255)/31;





}
