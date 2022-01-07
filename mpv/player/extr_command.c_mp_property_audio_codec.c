
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct track {TYPE_1__* dec; } ;
struct m_property {int dummy; } ;
struct TYPE_4__ {struct track*** current_track; } ;
struct TYPE_3__ {char* decoder_desc; } ;
typedef TYPE_2__ MPContext ;


 size_t STREAM_AUDIO ;
 int m_property_strdup_ro (int,void*,char const*) ;

__attribute__((used)) static int mp_property_audio_codec(void *ctx, struct m_property *prop,
                                   int action, void *arg)
{
    MPContext *mpctx = ctx;
    struct track *track = mpctx->current_track[0][STREAM_AUDIO];
    const char *c = track && track->dec ? track->dec->decoder_desc : ((void*)0);
    return m_property_strdup_ro(action, arg, c);
}
