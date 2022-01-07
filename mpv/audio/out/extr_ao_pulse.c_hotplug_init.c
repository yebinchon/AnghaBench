
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct priv {int context; int mainloop; } ;
struct ao {struct priv* priv; } ;


 int PA_SUBSCRIPTION_MASK_SINK ;
 int context_success_cb ;
 int pa_context_subscribe (int ,int ,int ,struct ao*) ;
 scalar_t__ pa_init_boilerplate (struct ao*) ;
 int pa_threaded_mainloop_lock (int ) ;
 int waitop (struct priv*,int ) ;

__attribute__((used)) static int hotplug_init(struct ao *ao)
{
    struct priv *priv = ao->priv;
    if (pa_init_boilerplate(ao) < 0)
        return -1;

    pa_threaded_mainloop_lock(priv->mainloop);
    waitop(priv, pa_context_subscribe(priv->context, PA_SUBSCRIPTION_MASK_SINK,
                                      context_success_cb, ao));

    return 0;
}
