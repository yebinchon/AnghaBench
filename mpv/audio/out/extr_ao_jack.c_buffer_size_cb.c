
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct priv {int buffer_size; } ;
struct ao {struct priv* priv; } ;
typedef int jack_nframes_t ;


 int atomic_store (int *,int ) ;

__attribute__((used)) static int buffer_size_cb(jack_nframes_t nframes, void *arg)
{
    struct ao *ao = arg;
    struct priv *p = ao->priv;

    atomic_store(&p->buffer_size, nframes);

    return 0;
}
