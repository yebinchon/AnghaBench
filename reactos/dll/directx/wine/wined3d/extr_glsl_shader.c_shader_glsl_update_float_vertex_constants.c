
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wined3d_device {struct shader_glsl_priv* shader_priv; } ;
struct constant_heap {int dummy; } ;
struct shader_glsl_priv {int next_constant_version; struct constant_heap vconst_heap; } ;
typedef scalar_t__ UINT ;


 int update_heap_entry (struct constant_heap*,scalar_t__,int ) ;

__attribute__((used)) static void shader_glsl_update_float_vertex_constants(struct wined3d_device *device, UINT start, UINT count)
{
    struct shader_glsl_priv *priv = device->shader_priv;
    struct constant_heap *heap = &priv->vconst_heap;
    UINT i;

    for (i = start; i < count + start; ++i)
    {
        update_heap_entry(heap, i, priv->next_constant_version);
    }
}
