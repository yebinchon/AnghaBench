
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nk_image {void* w; void* h; } ;
typedef void* UINT ;
typedef int GpImage ;


 int GdipGetImageHeight (int *,void**) ;
 int GdipGetImageWidth (int *,void**) ;
 struct nk_image nk_image_ptr (void*) ;

__attribute__((used)) static struct nk_image
nk_gdip_image_to_nk(GpImage *image) {
    struct nk_image img;
    UINT uwidth, uheight;
    img = nk_image_ptr( (void*)image );
    GdipGetImageHeight(image, &uheight);
    GdipGetImageWidth(image, &uwidth);
    img.h = uheight;
    img.w = uwidth;
    return img;
}
