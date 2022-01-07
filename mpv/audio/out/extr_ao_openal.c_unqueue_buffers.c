
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct priv {int num_buffers; } ;
struct ao {struct priv* priv; } ;
typedef int ALint ;


 int AL_BUFFERS_PROCESSED ;
 int alGetSourcei (int ,int ,int*) ;
 int alSourceUnqueueBuffers (int ,int,int *) ;
 int * buffers ;
 int source ;
 size_t unqueue_buf ;

__attribute__((used)) static void unqueue_buffers(struct ao *ao)
{
    struct priv *q = ao->priv;
    ALint p;
    int till_wrap = q->num_buffers - unqueue_buf;
    alGetSourcei(source, AL_BUFFERS_PROCESSED, &p);
    if (p >= till_wrap) {
        alSourceUnqueueBuffers(source, till_wrap, &buffers[unqueue_buf]);
        unqueue_buf = 0;
        p -= till_wrap;
    }
    if (p) {
        alSourceUnqueueBuffers(source, p, &buffers[unqueue_buf]);
        unqueue_buf += p;
    }
}
