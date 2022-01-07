
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct wined3d_device {struct shader_arb_priv* shader_priv; } ;
struct shader_arb_priv {TYPE_2__* vertex_pipe; TYPE_1__* fragment_pipe; int signature_tree; } ;
struct TYPE_4__ {int (* vp_free ) (struct wined3d_device*) ;} ;
struct TYPE_3__ {int (* free_private ) (struct wined3d_device*) ;} ;


 int heap_free (struct shader_arb_priv*) ;
 int release_signature ;
 int stub1 (struct wined3d_device*) ;
 int stub2 (struct wined3d_device*) ;
 int wine_rb_destroy (int *,int ,int *) ;

__attribute__((used)) static void shader_arb_free(struct wined3d_device *device)
{
    struct shader_arb_priv *priv = device->shader_priv;

    wine_rb_destroy(&priv->signature_tree, release_signature, ((void*)0));
    priv->fragment_pipe->free_private(device);
    priv->vertex_pipe->vp_free(device);
    heap_free(device->shader_priv);
}
