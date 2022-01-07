
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct priv {scalar_t__ audio_fd; int device_failed; double audio_end; int outburst; } ;
struct ao {int sstride; scalar_t__ samplerate; struct priv* priv; } ;


 int AOPLAY_FINAL_CHUNK ;
 int MP_ERR (struct ao*,char*) ;
 double mp_time_sec () ;
 scalar_t__ reopen_device (struct ao*,int) ;
 int write (scalar_t__,void*,int) ;

__attribute__((used)) static int play(struct ao *ao, void **data, int samples, int flags)
{
    struct priv *p = ao->priv;
    int len = samples * ao->sstride;
    if (len == 0)
        return len;

    if (p->audio_fd < 0 && !p->device_failed && reopen_device(ao, 0) < 0)
        MP_ERR(ao, "Fatal error: *** CANNOT RE-OPEN / RESET AUDIO DEVICE ***\n");
    if (p->audio_fd < 0) {

        p->device_failed = 1;
        double now = mp_time_sec();
        if (p->audio_end < now)
            p->audio_end = now;
        p->audio_end += samples / (double)ao->samplerate;
        return samples;
    }

    if (len > p->outburst || !(flags & AOPLAY_FINAL_CHUNK)) {
        len /= p->outburst;
        len *= p->outburst;
    }
    len = write(p->audio_fd, data[0], len);
    return len / ao->sstride;
}
