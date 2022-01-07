
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct wined3d_texture_sub_resource {int * parent; TYPE_1__* parent_ops; } ;
struct wined3d_texture {unsigned int level_count; unsigned int layer_count; struct wined3d_texture_sub_resource* sub_resources; } ;
struct TYPE_2__ {int (* wined3d_object_destroyed ) (int *) ;} ;


 int TRACE (char*,unsigned int) ;
 int stub1 (int *) ;

__attribute__((used)) static void wined3d_texture_sub_resources_destroyed(struct wined3d_texture *texture)
{
    unsigned int sub_count = texture->level_count * texture->layer_count;
    struct wined3d_texture_sub_resource *sub_resource;
    unsigned int i;

    for (i = 0; i < sub_count; ++i)
    {
        sub_resource = &texture->sub_resources[i];
        if (sub_resource->parent)
        {
            TRACE("sub-resource %u.\n", i);
            sub_resource->parent_ops->wined3d_object_destroyed(sub_resource->parent);
            sub_resource->parent = ((void*)0);
        }
    }
}
