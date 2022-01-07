
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct priv {scalar_t__ stream; int mainloop; } ;
struct ao {struct priv* priv; } ;


 int pa_stream_drain (scalar_t__,int ,struct ao*) ;
 int pa_threaded_mainloop_lock (int ) ;
 int success_cb ;
 int waitop (struct priv*,int ) ;

__attribute__((used)) static void drain(struct ao *ao)
{
    struct priv *priv = ao->priv;
    if (priv->stream) {
        pa_threaded_mainloop_lock(priv->mainloop);
        waitop(priv, pa_stream_drain(priv->stream, success_cb, ao));
    }
}
