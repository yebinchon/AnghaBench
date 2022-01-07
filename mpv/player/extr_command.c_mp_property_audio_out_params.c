
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mp_chmap {int dummy; } ;
struct mp_aframe {int dummy; } ;
struct m_property {int dummy; } ;
struct TYPE_2__ {scalar_t__ ao; } ;
typedef TYPE_1__ MPContext ;


 int ao_get_format (scalar_t__,int*,int*,struct mp_chmap*) ;
 struct mp_aframe* mp_aframe_create () ;
 int mp_aframe_set_chmap (struct mp_aframe*,struct mp_chmap*) ;
 int mp_aframe_set_format (struct mp_aframe*,int) ;
 int mp_aframe_set_rate (struct mp_aframe*,int) ;
 int property_audiofmt (struct mp_aframe*,int,void*) ;
 int talloc_free (struct mp_aframe*) ;

__attribute__((used)) static int mp_property_audio_out_params(void *ctx, struct m_property *prop,
                                        int action, void *arg)
{
    MPContext *mpctx = ctx;
    struct mp_aframe *frame = ((void*)0);
    if (mpctx->ao) {
        frame = mp_aframe_create();
        int samplerate;
        int format;
        struct mp_chmap channels;
        ao_get_format(mpctx->ao, &samplerate, &format, &channels);
        mp_aframe_set_rate(frame, samplerate);
        mp_aframe_set_format(frame, format);
        mp_aframe_set_chmap(frame, &channels);
    }
    int r = property_audiofmt(frame, action, arg);
    talloc_free(frame);
    return r;
}
