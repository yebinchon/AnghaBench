
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mp_audio_buffer {int dummy; } ;
struct ao_chain {int dummy; } ;
struct MPContext {double play_dir; struct ao_chain* ao_chain; } ;


 int AD_EOF ;
 int AD_OK ;
 int AD_WAIT ;
 double MP_NOPTS_VALUE ;
 int copy_output (struct MPContext*,struct ao_chain*,int,double,int*) ;
 double get_play_end_pts (struct MPContext*) ;

__attribute__((used)) static int filter_audio(struct MPContext *mpctx, struct mp_audio_buffer *outbuf,
                        int minsamples)
{
    struct ao_chain *ao_c = mpctx->ao_chain;

    double endpts = get_play_end_pts(mpctx);
    if (endpts != MP_NOPTS_VALUE)
        endpts *= mpctx->play_dir;

    bool eof = 0;
    if (!copy_output(mpctx, ao_c, minsamples, endpts, &eof))
        return AD_WAIT;
    return eof ? AD_EOF : AD_OK;
}
