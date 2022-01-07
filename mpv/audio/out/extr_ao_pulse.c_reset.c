
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct priv {scalar_t__ retval; int stream; int mainloop; } ;
struct ao {struct priv* priv; } ;


 int GENERIC_ERR_MSG (char*) ;
 int cork (struct ao*,int) ;
 int pa_stream_flush (int ,int ,struct ao*) ;
 int pa_threaded_mainloop_lock (int ) ;
 int success_cb ;
 int waitop (struct priv*,int ) ;

__attribute__((used)) static void reset(struct ao *ao)
{

    cork(ao, 1);
    struct priv *priv = ao->priv;
    pa_threaded_mainloop_lock(priv->mainloop);
    priv->retval = 0;
    if (!waitop(priv, pa_stream_flush(priv->stream, success_cb, ao)) ||
        !priv->retval)
        GENERIC_ERR_MSG("pa_stream_flush() failed");
    cork(ao, 0);
}
