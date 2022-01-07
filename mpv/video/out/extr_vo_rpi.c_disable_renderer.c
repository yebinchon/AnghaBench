
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vo {struct priv* priv; } ;
struct priv {int renderer_enabled; int * swpool; TYPE_1__* renderer; } ;
struct TYPE_2__ {int * input; int control; } ;


 int mmal_component_disable (TYPE_1__*) ;
 int mmal_pool_destroy (int *) ;
 int mmal_port_disable (int ) ;
 int mmal_port_flush (int ) ;

__attribute__((used)) static void disable_renderer(struct vo *vo)
{
    struct priv *p = vo->priv;

    if (p->renderer_enabled) {
        mmal_port_disable(p->renderer->control);
        mmal_port_disable(p->renderer->input[0]);

        mmal_port_flush(p->renderer->control);
        mmal_port_flush(p->renderer->input[0]);

        mmal_component_disable(p->renderer);
    }
    mmal_pool_destroy(p->swpool);
    p->swpool = ((void*)0);
    p->renderer_enabled = 0;
}
