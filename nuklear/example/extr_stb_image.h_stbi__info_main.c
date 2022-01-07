
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int stbi__context ;


 scalar_t__ stbi__bmp_info (int *,int*,int*,int*) ;
 int stbi__err (char*,char*) ;
 scalar_t__ stbi__gif_info (int *,int*,int*,int*) ;
 scalar_t__ stbi__hdr_info (int *,int*,int*,int*) ;
 scalar_t__ stbi__jpeg_info (int *,int*,int*,int*) ;
 scalar_t__ stbi__pic_info (int *,int*,int*,int*) ;
 scalar_t__ stbi__png_info (int *,int*,int*,int*) ;
 scalar_t__ stbi__pnm_info (int *,int*,int*,int*) ;
 scalar_t__ stbi__psd_info (int *,int*,int*,int*) ;
 scalar_t__ stbi__tga_info (int *,int*,int*,int*) ;

__attribute__((used)) static int stbi__info_main(stbi__context *s, int *x, int *y, int *comp)
{

   if (stbi__jpeg_info(s, x, y, comp)) return 1;



   if (stbi__png_info(s, x, y, comp)) return 1;



   if (stbi__gif_info(s, x, y, comp)) return 1;



   if (stbi__bmp_info(s, x, y, comp)) return 1;



   if (stbi__psd_info(s, x, y, comp)) return 1;



   if (stbi__pic_info(s, x, y, comp)) return 1;



   if (stbi__pnm_info(s, x, y, comp)) return 1;



   if (stbi__hdr_info(s, x, y, comp)) return 1;




   if (stbi__tga_info(s, x, y, comp))
       return 1;

   return stbi__err("unknown image type", "Image not of any known type, or corrupt");
}
