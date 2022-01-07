
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ id; int ptr; } ;
struct nk_image {TYPE_1__ handle; } ;
typedef int HBITMAP ;


 int DeleteObject (int ) ;
 int memset (struct nk_image*,int ,int) ;

__attribute__((used)) static void
nk_delete_image(struct nk_image * image)
{
    if (image && image->handle.id != 0)
    {
        HBITMAP hbm = (HBITMAP)image->handle.ptr;
        DeleteObject(hbm);
        memset(image, 0, sizeof(struct nk_image));
    }
}
