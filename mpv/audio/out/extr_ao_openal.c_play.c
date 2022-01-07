
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct priv {int num_samples; size_t num_buffers; int al_format; } ;
struct ao {int sstride; int samplerate; struct priv* priv; } ;
typedef scalar_t__ ALint ;


 scalar_t__ AL_PLAYING ;
 int AL_SOURCE_STATE ;
 int AOPLAY_FINAL_CHUNK ;
 int alBufferData (int ,int ,char*,int,int ) ;
 int alGetSourcei (int ,int ,scalar_t__*) ;
 int alSourcePlay (int ) ;
 int alSourceQueueBuffers (int ,int,int *) ;
 int* buffer_size ;
 int * buffers ;
 size_t cur_buf ;
 int source ;

__attribute__((used)) static int play(struct ao *ao, void **data, int samples, int flags)
{
    struct priv *p = ao->priv;

    int buffered_samples = 0;
    int num = 0;
    if (flags & AOPLAY_FINAL_CHUNK) {
        num = 1;
        buffered_samples = samples;
    } else {
        num = samples / p->num_samples;
        buffered_samples = num * p->num_samples;
    }

    for (int i = 0; i < num; i++) {
        char *d = *data;
        if (flags & AOPLAY_FINAL_CHUNK) {
            buffer_size[cur_buf] = samples;
        } else {
            buffer_size[cur_buf] = p->num_samples;
        }
        d += i * buffer_size[cur_buf] * ao->sstride;
        alBufferData(buffers[cur_buf], p->al_format, d,
            buffer_size[cur_buf] * ao->sstride, ao->samplerate);
        alSourceQueueBuffers(source, 1, &buffers[cur_buf]);
        cur_buf = (cur_buf + 1) % p->num_buffers;
    }

    ALint state;
    alGetSourcei(source, AL_SOURCE_STATE, &state);
    if (state != AL_PLAYING)
        alSourcePlay(source);

    return buffered_samples;
}
