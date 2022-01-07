
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ao_chain {double last_out_pts; int ao_buffer; } ;
struct MPContext {double audio_speed; struct ao_chain* ao_chain; } ;


 double MP_NOPTS_VALUE ;
 double mp_audio_buffer_seconds (int ) ;

double written_audio_pts(struct MPContext *mpctx)
{
    struct ao_chain *ao_c = mpctx->ao_chain;
    if (!ao_c)
        return MP_NOPTS_VALUE;


    double a_pts = ao_c->last_out_pts;
    if (a_pts == MP_NOPTS_VALUE)
        return MP_NOPTS_VALUE;




    a_pts -= mp_audio_buffer_seconds(ao_c->ao_buffer) * mpctx->audio_speed;

    return a_pts;
}
