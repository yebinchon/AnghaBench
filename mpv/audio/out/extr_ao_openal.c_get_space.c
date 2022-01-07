
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct priv {int num_buffers; int num_samples; } ;
struct ao {struct priv* priv; } ;
typedef int ALint ;


 int AL_BUFFERS_QUEUED ;
 int alGetSourcei (int ,int ,int*) ;
 int source ;
 int unqueue_buffers (struct ao*) ;

__attribute__((used)) static int get_space(struct ao *ao)
{
    struct priv *p = ao->priv;
    ALint queued;
    unqueue_buffers(ao);
    alGetSourcei(source, AL_BUFFERS_QUEUED, &queued);
    queued = p->num_buffers - queued;
    if (queued < 0)
        return 0;
    return p->num_samples * queued;
}
