
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ image_id; } ;
struct va_surface {scalar_t__ id; int display; TYPE_1__ image; } ;


 scalar_t__ VA_INVALID_ID ;
 int talloc_free (struct va_surface*) ;
 int vaDestroyImage (int ,scalar_t__) ;
 int vaDestroySurfaces (int ,scalar_t__*,int) ;

__attribute__((used)) static void release_va_surface(void *arg)
{
    struct va_surface *surface = arg;

    if (surface->id != VA_INVALID_ID) {
        if (surface->image.image_id != VA_INVALID_ID)
            vaDestroyImage(surface->display, surface->image.image_id);
        vaDestroySurfaces(surface->display, &surface->id, 1);
    }

    talloc_free(surface);
}
