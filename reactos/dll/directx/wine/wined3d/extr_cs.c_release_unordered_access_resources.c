
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct wined3d_unordered_access_view {int resource; } ;
struct TYPE_4__ {TYPE_1__* uav_resource_info; } ;
struct wined3d_shader {TYPE_2__ reg_maps; } ;
struct TYPE_3__ {int type; } ;


 unsigned int MAX_UNORDERED_ACCESS_VIEWS ;
 int wined3d_resource_release (int ) ;

__attribute__((used)) static void release_unordered_access_resources(const struct wined3d_shader *shader,
        struct wined3d_unordered_access_view * const *views)
{
    unsigned int i;

    if (!shader)
        return;

    for (i = 0; i < MAX_UNORDERED_ACCESS_VIEWS; ++i)
    {
        if (!shader->reg_maps.uav_resource_info[i].type)
            continue;

        if (!views[i])
            continue;

        wined3d_resource_release(views[i]->resource);
    }
}
