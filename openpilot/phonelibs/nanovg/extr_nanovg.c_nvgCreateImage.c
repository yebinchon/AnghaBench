
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int NVGcontext ;


 int nvgCreateImageRGBA (int *,int,int,int,unsigned char*) ;
 int stbi_convert_iphone_png_to_rgb (int) ;
 int stbi_image_free (unsigned char*) ;
 unsigned char* stbi_load (char const*,int*,int*,int*,int) ;
 int stbi_set_unpremultiply_on_load (int) ;

int nvgCreateImage(NVGcontext* ctx, const char* filename, int imageFlags)
{
 int w, h, n, image;
 unsigned char* img;
 stbi_set_unpremultiply_on_load(1);
 stbi_convert_iphone_png_to_rgb(1);
 img = stbi_load(filename, &w, &h, &n, 4);
 if (img == ((void*)0)) {

  return 0;
 }
 image = nvgCreateImageRGBA(ctx, w, h, imageFlags, img);
 stbi_image_free(img);
 return image;
}
