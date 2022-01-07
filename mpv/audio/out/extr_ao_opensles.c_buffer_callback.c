
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct priv {double frames_per_enqueue; int buffer_lock; int bytes_per_enqueue; int buf; scalar_t__ audio_latency; } ;
struct ao {scalar_t__ samplerate; struct priv* priv; } ;
struct TYPE_4__ {scalar_t__ (* Enqueue ) (TYPE_1__**,int ,int ) ;} ;
typedef scalar_t__ SLresult ;
typedef TYPE_1__** SLBufferQueueItf ;


 int MP_ERR (struct ao*,char*,scalar_t__) ;
 scalar_t__ SL_RESULT_SUCCESS ;
 int ao_read_data (struct ao*,int *,double,scalar_t__) ;
 scalar_t__ mp_time_us () ;
 int pthread_mutex_lock (int *) ;
 int pthread_mutex_unlock (int *) ;
 scalar_t__ stub1 (TYPE_1__**,int ,int ) ;

__attribute__((used)) static void buffer_callback(SLBufferQueueItf buffer_queue, void *context)
{
    struct ao *ao = context;
    struct priv *p = ao->priv;
    SLresult res;
    double delay;

    pthread_mutex_lock(&p->buffer_lock);

    delay = p->frames_per_enqueue / (double)ao->samplerate;
    delay += p->audio_latency;
    ao_read_data(ao, &p->buf, p->frames_per_enqueue,
        mp_time_us() + 1000000LL * delay);

    res = (*buffer_queue)->Enqueue(buffer_queue, p->buf, p->bytes_per_enqueue);
    if (res != SL_RESULT_SUCCESS)
        MP_ERR(ao, "Failed to Enqueue: %d\n", res);

    pthread_mutex_unlock(&p->buffer_lock);
}
