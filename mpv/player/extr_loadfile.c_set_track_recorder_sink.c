
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct track {struct mp_recorder_sink* remux_sink; TYPE_1__* dec; scalar_t__ d_sub; } ;
struct mp_recorder_sink {int dummy; } ;
struct TYPE_2__ {struct mp_recorder_sink* recorder_sink; } ;


 int sub_set_recorder_sink (scalar_t__,struct mp_recorder_sink*) ;

__attribute__((used)) static void set_track_recorder_sink(struct track *track,
                                    struct mp_recorder_sink *sink)
{
    if (track->d_sub)
        sub_set_recorder_sink(track->d_sub, sink);
    if (track->dec)
        track->dec->recorder_sink = sink;
    track->remux_sink = sink;
}
