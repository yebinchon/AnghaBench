
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct wined3d_texture {TYPE_2__* sub_resources; } ;
struct wined3d_context {int dummy; } ;
struct TYPE_3__ {int surface; } ;
struct TYPE_4__ {TYPE_1__ u; } ;
typedef int DWORD ;
typedef int BOOL ;


 int surface_load_location (int ,struct wined3d_context*,int ) ;

__attribute__((used)) static BOOL texture2d_load_location(struct wined3d_texture *texture, unsigned int sub_resource_idx,
        struct wined3d_context *context, DWORD location)
{
    return surface_load_location(texture->sub_resources[sub_resource_idx].u.surface, context, location);
}
