
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {TYPE_3__* ptr; } ;
struct nk_image {TYPE_1__ handle; } ;
struct TYPE_7__ {int dpy; } ;
typedef TYPE_2__ XSurface ;
struct TYPE_8__ {int clipMaskGC; int clipMask; int ximage; } ;
typedef TYPE_3__ XImageWithAlpha ;
struct TYPE_9__ {TYPE_2__* surf; } ;


 int XDestroyImage (int ) ;
 int XFreeGC (int ,int ) ;
 int XFreePixmap (int ,int ) ;
 int free (TYPE_3__*) ;
 TYPE_4__ xlib ;

void
nk_xsurf_image_free(struct nk_image* image)
{
    XSurface *surf = xlib.surf;
    XImageWithAlpha *aimage = image->handle.ptr;
    if (!aimage) return;
    XDestroyImage(aimage->ximage);
    XFreePixmap(surf->dpy, aimage->clipMask);
    XFreeGC(surf->dpy, aimage->clipMaskGC);
    free(aimage);
}
