
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int NVGcontext ;


 int nvgCreateImageRGBA (int *,int,int,int,unsigned char*) ;
 int stbi_image_free (unsigned char*) ;
 unsigned char* stbi_load_from_memory (unsigned char*,int,int*,int*,int*,int) ;

int nvgCreateImageMem(NVGcontext* ctx, int imageFlags, unsigned char* data, int ndata)
{
 int w, h, n, image;
 unsigned char* img = stbi_load_from_memory(data, ndata, &w, &h, &n, 4);
 if (img == ((void*)0)) {

  return 0;
 }
 image = nvgCreateImageRGBA(ctx, w, h, imageFlags, img);
 stbi_image_free(img);
 return image;
}
