
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ao_push_state {int silence_samples; int * silence; } ;
struct TYPE_2__ {int num; } ;
struct ao {int format; TYPE_1__ channels; struct ao_push_state* api_priv; } ;


 int MP_NUM_CHANNELS ;
 int af_fill_silence (int ,int,int ) ;
 int af_fmt_is_pcm (int ) ;
 int af_fmt_to_bytes (int ) ;
 int talloc_free (int ) ;
 int talloc_size (struct ao_push_state*,int) ;

__attribute__((used)) static bool realloc_silence(struct ao *ao, int samples)
{
    struct ao_push_state *p = ao->api_priv;

    if (samples <= 0 || !af_fmt_is_pcm(ao->format))
        return 0;

    if (samples > p->silence_samples) {
        talloc_free(p->silence[0]);

        int bytes = af_fmt_to_bytes(ao->format) * samples * ao->channels.num;
        p->silence[0] = talloc_size(p, bytes);
        for (int n = 1; n < MP_NUM_CHANNELS; n++)
            p->silence[n] = p->silence[0];
        p->silence_samples = samples;

        af_fill_silence(p->silence[0], bytes, ao->format);
    }

    return 1;
}
