
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct priv {int outburst; int paused; int final_chunk_written; int alsa; int convert; } ;
struct ao {int format; struct priv* priv; } ;
typedef int snd_pcm_sframes_t ;


 int AOPLAY_FINAL_CHUNK ;
 int CHECK_ALSA_ERROR (char*) ;
 int EAGAIN ;
 int EINTR ;
 int EPIPE ;
 int ESTRPIPE ;
 int MP_ERR (struct ao*,char*,int ) ;
 scalar_t__ af_fmt_is_planar (int ) ;
 int ao_convert_inplace (int *,void**,int) ;
 int check_device_present (struct ao*,int) ;
 int handle_underrun (struct ao*) ;
 int resume_device (struct ao*) ;
 int snd_pcm_prepare (int ) ;
 int snd_pcm_writei (int ,void*,int) ;
 int snd_pcm_writen (int ,void**,int) ;
 int snd_strerror (int) ;

__attribute__((used)) static int play(struct ao *ao, void **data, int samples, int flags)
{
    struct priv *p = ao->priv;
    snd_pcm_sframes_t res = 0;
    bool final_chunk = flags & AOPLAY_FINAL_CHUNK;

    if (!final_chunk)
        samples = samples / p->outburst * p->outburst;

    if (samples == 0)
        goto done;
    ao_convert_inplace(&p->convert, data, samples);

    do {
        if (af_fmt_is_planar(ao->format)) {
            res = snd_pcm_writen(p->alsa, data, samples);
        } else {
            res = snd_pcm_writei(p->alsa, data[0], samples);
        }

        if (res == -EINTR || res == -EAGAIN) {
            res = 0;
        } else if (!check_device_present(ao, res)) {
            goto alsa_error;
        } else if (res < 0) {
            if (res == -ESTRPIPE) {
                resume_device(ao);
            } else if (res == -EPIPE) {
                handle_underrun(ao);
            } else {
                MP_ERR(ao, "Write error: %s\n", snd_strerror(res));
            }
            int err = snd_pcm_prepare(p->alsa);
            CHECK_ALSA_ERROR("pcm prepare error");
            res = 0;
        }
    } while (res == 0);

    p->paused = 0;

done:
    p->final_chunk_written = res == samples && final_chunk;
    return res < 0 ? -1 : res;

alsa_error:
    return -1;
}
