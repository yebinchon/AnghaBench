
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct frame_info {double num_vsyncs; double av_diff; } ;
struct MPContext {int num_past_frames; struct frame_info* past_frames; } ;


 double NAN ;

__attribute__((used)) static double compute_audio_drift(struct MPContext *mpctx, double vsync)
{




    if (mpctx->num_past_frames <= 10)
        return NAN;
    int num = mpctx->num_past_frames - 1;
    double sum_x = 0, sum_y = 0, sum_xy = 0, sum_xx = 0;
    double x = 0;
    for (int n = 0; n < num; n++) {
        struct frame_info *frame = &mpctx->past_frames[n + 1];
        if (frame->num_vsyncs < 0)
            return NAN;
        double y = frame->av_diff;
        sum_x += x;
        sum_y += y;
        sum_xy += x * y;
        sum_xx += x * x;
        x -= frame->num_vsyncs * vsync;
    }
    return (sum_x * sum_y - num * sum_xy) / (sum_x * sum_x - num * sum_xx);
}
