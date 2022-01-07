
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct wined3d_device {struct atifs_private_data* fragment_priv; TYPE_1__* adapter; } ;
struct atifs_private_data {int fragment_shaders; } ;
struct TYPE_2__ {int gl_info; } ;


 int atifs_free_ffpshader ;
 int heap_free (struct atifs_private_data*) ;
 int wine_rb_destroy (int *,int ,int *) ;

__attribute__((used)) static void atifs_free(struct wined3d_device *device)
{
    struct atifs_private_data *priv = device->fragment_priv;

    wine_rb_destroy(&priv->fragment_shaders, atifs_free_ffpshader, &device->adapter->gl_info);

    heap_free(priv);
    device->fragment_priv = ((void*)0);
}
