
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ type; } ;
struct TYPE_5__ {TYPE_1__ frame; } ;
struct priv {TYPE_2__ sub; } ;
struct mp_filter {struct priv* priv; } ;


 scalar_t__ MP_FRAME_AUDIO ;
 scalar_t__ MP_FRAME_VIDEO ;
 int handle_audio_frame (struct mp_filter*) ;
 int handle_video_frame (struct mp_filter*) ;
 int mp_subfilter_continue (TYPE_2__*) ;
 int mp_subfilter_read (TYPE_2__*) ;

__attribute__((used)) static void process(struct mp_filter *f)
{
    struct priv *p = f->priv;

    if (!mp_subfilter_read(&p->sub))
        return;

    if (p->sub.frame.type == MP_FRAME_VIDEO) {
        handle_video_frame(f);
        return;
    }

    if (p->sub.frame.type == MP_FRAME_AUDIO) {
        handle_audio_frame(f);
        return;
    }

    mp_subfilter_continue(&p->sub);
}
