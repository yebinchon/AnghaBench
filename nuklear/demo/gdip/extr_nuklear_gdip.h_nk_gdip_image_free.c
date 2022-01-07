
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int ptr; } ;
struct nk_image {TYPE_1__ handle; } ;


 int GdipDisposeImage (int ) ;

void
nk_gdip_image_free(struct nk_image image)
{
    if (!image.handle.ptr)
        return;
    GdipDisposeImage(image.handle.ptr);
}
