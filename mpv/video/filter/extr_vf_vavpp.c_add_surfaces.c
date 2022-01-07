
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct surface_refs {int max_surfaces; int num_surfaces; int surfaces; } ;
struct priv {int queue; } ;
struct mp_image {int dummy; } ;
typedef scalar_t__ VASurfaceID ;


 int MP_TARRAY_APPEND (struct priv*,int ,int ,scalar_t__) ;
 scalar_t__ VA_INVALID_ID ;
 struct mp_image* mp_refqueue_get (int ,int) ;
 scalar_t__ va_surface_id (struct mp_image*) ;

__attribute__((used)) static void add_surfaces(struct priv *p, struct surface_refs *refs, int dir)
{
    for (int n = 0; n < refs->max_surfaces; n++) {
        struct mp_image *s = mp_refqueue_get(p->queue, (1 + n) * dir);
        if (!s)
            break;
        VASurfaceID id = va_surface_id(s);
        if (id == VA_INVALID_ID)
            break;
        MP_TARRAY_APPEND(p, refs->surfaces, refs->num_surfaces, id);
    }
}
