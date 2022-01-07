
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wined3d_shader_backend_ops {int dummy; } ;



__attribute__((used)) static void *ffp_alloc(const struct wined3d_shader_backend_ops *shader_backend, void *shader_priv)
{
    return shader_priv;
}
