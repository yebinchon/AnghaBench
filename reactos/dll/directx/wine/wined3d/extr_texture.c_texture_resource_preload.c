
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wined3d_texture {int flags; } ;
struct wined3d_resource {int device; } ;
struct wined3d_context {int dummy; } ;


 int WINED3D_TEXTURE_IS_SRGB ;
 struct wined3d_context* context_acquire (int ,int *,int ) ;
 int context_release (struct wined3d_context*) ;
 struct wined3d_texture* texture_from_resource (struct wined3d_resource*) ;
 int wined3d_texture_load (struct wined3d_texture*,struct wined3d_context*,int) ;

__attribute__((used)) static void texture_resource_preload(struct wined3d_resource *resource)
{
    struct wined3d_texture *texture = texture_from_resource(resource);
    struct wined3d_context *context;

    context = context_acquire(resource->device, ((void*)0), 0);
    wined3d_texture_load(texture, context, texture->flags & WINED3D_TEXTURE_IS_SRGB);
    context_release(context);
}
