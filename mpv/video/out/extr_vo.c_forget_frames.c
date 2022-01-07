
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vo_internal {int hasframe; int hasframe_rendered; TYPE_1__* current_frame; int current_frame_id; int * frame_queued; scalar_t__ delayed_count; scalar_t__ drop_count; } ;
struct vo {struct vo_internal* in; } ;
struct TYPE_2__ {int display_synced; scalar_t__ num_vsyncs; } ;


 scalar_t__ VO_MAX_REQ_FRAMES ;
 int talloc_free (int *) ;

__attribute__((used)) static void forget_frames(struct vo *vo)
{
    struct vo_internal *in = vo->in;
    in->hasframe = 0;
    in->hasframe_rendered = 0;
    in->drop_count = 0;
    in->delayed_count = 0;
    talloc_free(in->frame_queued);
    in->frame_queued = ((void*)0);
    in->current_frame_id += VO_MAX_REQ_FRAMES + 1;

    if (in->current_frame) {
        in->current_frame->num_vsyncs = 0;
        in->current_frame->display_synced = 0;
    }
}
