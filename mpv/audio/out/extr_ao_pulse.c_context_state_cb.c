
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct priv {int mainloop; } ;
struct ao {struct priv* priv; } ;
typedef int pa_context ;





 int pa_context_get_state (int *) ;
 int pa_threaded_mainloop_signal (int ,int ) ;

__attribute__((used)) static void context_state_cb(pa_context *c, void *userdata)
{
    struct ao *ao = userdata;
    struct priv *priv = ao->priv;
    switch (pa_context_get_state(c)) {
    case 129:
    case 128:
    case 130:
        pa_threaded_mainloop_signal(priv->mainloop, 0);
        break;
    }
}
