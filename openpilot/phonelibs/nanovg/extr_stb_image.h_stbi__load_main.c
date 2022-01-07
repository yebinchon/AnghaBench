
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int stbi__context ;


 unsigned char* stbi__bmp_load (int *,int*,int*,int*,int) ;
 scalar_t__ stbi__bmp_test (int *) ;
 unsigned char* stbi__errpuc (char*,char*) ;
 unsigned char* stbi__gif_load (int *,int*,int*,int*,int) ;
 scalar_t__ stbi__gif_test (int *) ;
 float* stbi__hdr_load (int *,int*,int*,int*,int) ;
 scalar_t__ stbi__hdr_test (int *) ;
 unsigned char* stbi__hdr_to_ldr (float*,int,int,int) ;
 unsigned char* stbi__jpeg_load (int *,int*,int*,int*,int) ;
 scalar_t__ stbi__jpeg_test (int *) ;
 unsigned char* stbi__pic_load (int *,int*,int*,int*,int) ;
 scalar_t__ stbi__pic_test (int *) ;
 unsigned char* stbi__png_load (int *,int*,int*,int*,int) ;
 scalar_t__ stbi__png_test (int *) ;
 unsigned char* stbi__pnm_load (int *,int*,int*,int*,int) ;
 scalar_t__ stbi__pnm_test (int *) ;
 unsigned char* stbi__psd_load (int *,int*,int*,int*,int) ;
 scalar_t__ stbi__psd_test (int *) ;
 unsigned char* stbi__tga_load (int *,int*,int*,int*,int) ;
 scalar_t__ stbi__tga_test (int *) ;

__attribute__((used)) static unsigned char *stbi__load_main(stbi__context *s, int *x, int *y, int *comp, int req_comp)
{

   if (stbi__jpeg_test(s)) return stbi__jpeg_load(s,x,y,comp,req_comp);


   if (stbi__png_test(s)) return stbi__png_load(s,x,y,comp,req_comp);


   if (stbi__bmp_test(s)) return stbi__bmp_load(s,x,y,comp,req_comp);


   if (stbi__gif_test(s)) return stbi__gif_load(s,x,y,comp,req_comp);


   if (stbi__psd_test(s)) return stbi__psd_load(s,x,y,comp,req_comp);


   if (stbi__pic_test(s)) return stbi__pic_load(s,x,y,comp,req_comp);


   if (stbi__pnm_test(s)) return stbi__pnm_load(s,x,y,comp,req_comp);



   if (stbi__hdr_test(s)) {
      float *hdr = stbi__hdr_load(s, x,y,comp,req_comp);
      return stbi__hdr_to_ldr(hdr, *x, *y, req_comp ? req_comp : *comp);
   }




   if (stbi__tga_test(s))
      return stbi__tga_load(s,x,y,comp,req_comp);


   return stbi__errpuc("unknown image type", "Image not of any known type, or corrupt");
}
