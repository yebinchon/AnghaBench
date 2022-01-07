
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct MPContext {int num_past_frames; TYPE_1__* past_frames; } ;
struct TYPE_2__ {double approx_duration; } ;



double calc_average_frame_duration(struct MPContext *mpctx)
{
    double total = 0;
    int num = 0;
    for (int n = 0; n < mpctx->num_past_frames; n++) {
        double dur = mpctx->past_frames[n].approx_duration;
        if (dur <= 0)
            continue;
        total += dur;
        num += 1;
    }
    return num > 0 ? total / num : 0;
}
