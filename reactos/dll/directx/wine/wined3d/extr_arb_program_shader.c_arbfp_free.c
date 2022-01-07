
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct wined3d_device {struct shader_arb_priv* fragment_priv; int * shader_backend; TYPE_1__* adapter; } ;
struct shader_arb_priv {int use_arbfp_fixed_func; int fragment_shaders; } ;
struct TYPE_2__ {int gl_info; } ;


 int FALSE ;
 int arb_program_shader_backend ;
 int arbfp_free_ffpshader ;
 int heap_free (struct shader_arb_priv*) ;
 int wine_rb_destroy (int *,int ,int *) ;

__attribute__((used)) static void arbfp_free(struct wined3d_device *device)
{
    struct shader_arb_priv *priv = device->fragment_priv;

    wine_rb_destroy(&priv->fragment_shaders, arbfp_free_ffpshader, &device->adapter->gl_info);
    priv->use_arbfp_fixed_func = FALSE;

    if (device->shader_backend != &arb_program_shader_backend)
        heap_free(device->fragment_priv);
}
