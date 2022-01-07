
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ image_id; } ;
struct va_surface {int is_derived; TYPE_1__ image; int display; } ;


 scalar_t__ VA_INVALID_ID ;
 int vaDestroyImage (int ,scalar_t__) ;

__attribute__((used)) static void va_surface_image_destroy(struct va_surface *surface)
{
    if (!surface || surface->image.image_id == VA_INVALID_ID)
        return;
    vaDestroyImage(surface->display, surface->image.image_id);
    surface->image.image_id = VA_INVALID_ID;
    surface->is_derived = 0;
}
