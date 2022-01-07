
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct wined3d_device {struct shader_glsl_priv* shader_priv; } ;
struct shader_glsl_priv {TYPE_2__* vertex_pipe; TYPE_1__* fragment_pipe; int shader_buffer; int string_buffers; struct shader_glsl_priv* stack; int vconst_heap; int pconst_heap; int program_lookup; } ;
struct TYPE_4__ {int (* vp_free ) (struct wined3d_device*) ;} ;
struct TYPE_3__ {int (* free_private ) (struct wined3d_device*) ;} ;


 int constant_heap_free (int *) ;
 int heap_free (struct shader_glsl_priv*) ;
 int string_buffer_free (int *) ;
 int string_buffer_list_cleanup (int *) ;
 int stub1 (struct wined3d_device*) ;
 int stub2 (struct wined3d_device*) ;
 int wine_rb_destroy (int *,int *,int *) ;

__attribute__((used)) static void shader_glsl_free(struct wined3d_device *device)
{
    struct shader_glsl_priv *priv = device->shader_priv;

    wine_rb_destroy(&priv->program_lookup, ((void*)0), ((void*)0));
    constant_heap_free(&priv->pconst_heap);
    constant_heap_free(&priv->vconst_heap);
    heap_free(priv->stack);
    string_buffer_list_cleanup(&priv->string_buffers);
    string_buffer_free(&priv->shader_buffer);
    priv->fragment_pipe->free_private(device);
    priv->vertex_pipe->vp_free(device);

    heap_free(device->shader_priv);
    device->shader_priv = ((void*)0);
}
