
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct priv {int retval; int mainloop; } ;
struct ao {struct priv* priv; } ;
typedef int pa_stream ;


 int pa_threaded_mainloop_signal (int ,int ) ;

__attribute__((used)) static void success_cb(pa_stream *s, int success, void *userdata)
{
    struct ao *ao = userdata;
    struct priv *priv = ao->priv;
    priv->retval = success;
    pa_threaded_mainloop_signal(priv->mainloop, 0);
}
