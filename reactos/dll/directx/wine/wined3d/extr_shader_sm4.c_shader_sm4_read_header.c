
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wined3d_shader_version {int dummy; } ;
struct wined3d_sm4_data {struct wined3d_shader_version shader_version; int * start; } ;
typedef int DWORD ;



__attribute__((used)) static void shader_sm4_read_header(void *data, const DWORD **ptr, struct wined3d_shader_version *shader_version)
{
    struct wined3d_sm4_data *priv = data;

    *ptr = priv->start;
    *shader_version = priv->shader_version;
}
