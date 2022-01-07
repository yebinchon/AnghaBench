
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wined3d_shader_resource_view {int resource; } ;
struct wined3d_cs_generate_mipmaps {struct wined3d_shader_resource_view* view; } ;
struct wined3d_cs {int dummy; } ;


 int shader_resource_view_generate_mipmaps (struct wined3d_shader_resource_view*) ;
 int wined3d_resource_release (int ) ;

__attribute__((used)) static void wined3d_cs_exec_generate_mipmaps(struct wined3d_cs *cs, const void *data)
{
    const struct wined3d_cs_generate_mipmaps *op = data;
    struct wined3d_shader_resource_view *view = op->view;

    shader_resource_view_generate_mipmaps(view);
    wined3d_resource_release(view->resource);
}
