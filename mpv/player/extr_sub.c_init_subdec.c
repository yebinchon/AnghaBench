
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct track {scalar_t__ d_sub; TYPE_1__* stream; int demuxer; } ;
struct mp_codec_params {int fps; } ;
struct MPContext {struct track*** current_track; int global; } ;
struct TYPE_2__ {struct mp_codec_params* codec; } ;


 int SD_CTRL_SET_VIDEO_DEF_FPS ;
 size_t STREAM_VIDEO ;
 int assert (int) ;
 int get_all_attachments (struct MPContext*) ;
 int sub_control (scalar_t__,int ,double*) ;
 scalar_t__ sub_create (int ,TYPE_1__*,int ) ;

__attribute__((used)) static bool init_subdec(struct MPContext *mpctx, struct track *track)
{
    assert(!track->d_sub);

    if (!track->demuxer || !track->stream)
        return 0;

    track->d_sub = sub_create(mpctx->global, track->stream,
                              get_all_attachments(mpctx));
    if (!track->d_sub)
        return 0;

    struct track *vtrack = mpctx->current_track[0][STREAM_VIDEO];
    struct mp_codec_params *v_c =
        vtrack && vtrack->stream ? vtrack->stream->codec : ((void*)0);
    double fps = v_c ? v_c->fps : 25;
    sub_control(track->d_sub, SD_CTRL_SET_VIDEO_DEF_FPS, &fps);

    return 1;
}
