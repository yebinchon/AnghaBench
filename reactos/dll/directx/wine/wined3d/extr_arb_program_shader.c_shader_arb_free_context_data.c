
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct wined3d_context {TYPE_1__* device; } ;
struct shader_arb_priv {struct wined3d_context* last_context; } ;
struct TYPE_2__ {struct shader_arb_priv* shader_priv; } ;



__attribute__((used)) static void shader_arb_free_context_data(struct wined3d_context *context)
{
    struct shader_arb_priv *priv;

    priv = context->device->shader_priv;
    if (priv->last_context == context)
        priv->last_context = ((void*)0);
}
