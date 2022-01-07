
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct priv {int mainloop; int stream; } ;
struct ao {size_t sstride; struct priv* priv; } ;


 size_t pa_stream_writable_size (int ) ;
 int pa_threaded_mainloop_lock (int ) ;
 int pa_threaded_mainloop_unlock (int ) ;

__attribute__((used)) static int get_space(struct ao *ao)
{
    struct priv *priv = ao->priv;
    pa_threaded_mainloop_lock(priv->mainloop);
    size_t space = pa_stream_writable_size(priv->stream);
    pa_threaded_mainloop_unlock(priv->mainloop);
    return space / ao->sstride;
}
