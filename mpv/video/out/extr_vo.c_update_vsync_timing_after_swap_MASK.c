#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct vo_vsync_info {void* last_queue_display_time; } ;
struct vo_internal {int num_successive_vsyncs; int num_vsync_samples; int* vsync_samples; int num_total_vsync_samples; int vsync_interval; double estimated_vsync_interval; int estimated_vsync_jitter; void* base_vsync; scalar_t__ drop_point; int /*<<< orphan*/  expecting_vsync; void* prev_vsync; } ;
struct vo {struct vo_internal* in; } ;
typedef  void* int64_t ;

/* Variables and functions */
 int MAX_VSYNC_SAMPLES ; 
 scalar_t__ FUNC0 (scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC1 (struct vo*,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct vo_internal*,int*,int,int /*<<< orphan*/ ,void*) ; 
 int /*<<< orphan*/  FUNC3 (struct vo*) ; 
 int /*<<< orphan*/  FUNC4 (struct vo*) ; 
 int /*<<< orphan*/  FUNC5 (struct vo*) ; 
 int FUNC6 (struct vo*,int) ; 

__attribute__((used)) static void FUNC7(struct vo *vo,
                                           struct vo_vsync_info *vsync)
{
    struct vo_internal *in = vo->in;

    int64_t vsync_time = vsync->last_queue_display_time;
    int64_t prev_vsync = in->prev_vsync;
    in->prev_vsync = vsync_time;

    if (!in->expecting_vsync) {
        FUNC4(vo);
        return;
    }

    in->num_successive_vsyncs++;
    if (in->num_successive_vsyncs <= 2)
        return;

    if (in->num_vsync_samples >= MAX_VSYNC_SAMPLES)
        in->num_vsync_samples -= 1;
    FUNC2(in, in->vsync_samples, in->num_vsync_samples, 0,
                        vsync_time - prev_vsync);
    in->drop_point = FUNC0(in->drop_point + 1, in->num_vsync_samples);
    in->num_total_vsync_samples += 1;
    if (in->base_vsync) {
        in->base_vsync += in->vsync_interval;
    } else {
        in->base_vsync = vsync_time;
    }

    double avg = 0;
    for (int n = 0; n < in->num_vsync_samples; n++)
        avg += in->vsync_samples[n];
    in->estimated_vsync_interval = avg / in->num_vsync_samples;
    in->estimated_vsync_jitter =
        FUNC6(vo, in->vsync_interval) / in->vsync_interval;

    FUNC3(vo);
    FUNC5(vo);

    FUNC1(vo, "value %f jitter", in->estimated_vsync_jitter);
    FUNC1(vo, "value %f vsync-diff", in->vsync_samples[0] / 1e6);
}