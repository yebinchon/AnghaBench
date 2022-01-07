
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct priv {int * buf; int buffer_lock; int * play; int * engine; int * buffer_queue; } ;
struct ao {struct priv* priv; } ;


 int DESTROY (int ) ;
 int free (int *) ;
 int output_mix ;
 int player ;
 int pthread_mutex_destroy (int *) ;
 int sl ;

__attribute__((used)) static void uninit(struct ao *ao)
{
    struct priv *p = ao->priv;

    DESTROY(player);
    DESTROY(output_mix);
    DESTROY(sl);

    p->buffer_queue = ((void*)0);
    p->engine = ((void*)0);
    p->play = ((void*)0);

    pthread_mutex_destroy(&p->buffer_lock);

    free(p->buf);
    p->buf = ((void*)0);
}
