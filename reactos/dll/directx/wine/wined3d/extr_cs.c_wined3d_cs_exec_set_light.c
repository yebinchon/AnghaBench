
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ type; } ;
struct wined3d_light_info {int glIndex; unsigned int OriginalIndex; int cutoff; int exponent; int direction; int position; TYPE_1__ OriginalParms; int entry; } ;
struct TYPE_5__ {unsigned int OriginalIndex; int cutoff; int exponent; int direction; int position; TYPE_1__ OriginalParms; } ;
struct wined3d_cs_set_light {TYPE_2__ light; } ;
struct TYPE_6__ {int * light_map; } ;
struct wined3d_cs {int device; TYPE_3__ state; } ;


 int ERR (char*) ;
 unsigned int LIGHTMAP_HASHFUNC (unsigned int) ;
 int STATE_ACTIVELIGHT (int) ;
 int STATE_LIGHT_TYPE ;
 int TRACE (char*) ;
 int device_invalidate_state (int ,int ) ;
 struct wined3d_light_info* heap_alloc_zero (int) ;
 int list_add_head (int *,int *) ;
 struct wined3d_light_info* wined3d_state_get_light (TYPE_3__*,unsigned int) ;

__attribute__((used)) static void wined3d_cs_exec_set_light(struct wined3d_cs *cs, const void *data)
{
    const struct wined3d_cs_set_light *op = data;
    struct wined3d_light_info *light_info;
    unsigned int light_idx, hash_idx;

    light_idx = op->light.OriginalIndex;

    if (!(light_info = wined3d_state_get_light(&cs->state, light_idx)))
    {
        TRACE("Adding new light.\n");
        if (!(light_info = heap_alloc_zero(sizeof(*light_info))))
        {
            ERR("Failed to allocate light info.\n");
            return;
        }

        hash_idx = LIGHTMAP_HASHFUNC(light_idx);
        list_add_head(&cs->state.light_map[hash_idx], &light_info->entry);
        light_info->glIndex = -1;
        light_info->OriginalIndex = light_idx;
    }

    if (light_info->glIndex != -1)
    {
        if (light_info->OriginalParms.type != op->light.OriginalParms.type)
            device_invalidate_state(cs->device, STATE_LIGHT_TYPE);
        device_invalidate_state(cs->device, STATE_ACTIVELIGHT(light_info->glIndex));
    }

    light_info->OriginalParms = op->light.OriginalParms;
    light_info->position = op->light.position;
    light_info->direction = op->light.direction;
    light_info->exponent = op->light.exponent;
    light_info->cutoff = op->light.cutoff;
}
