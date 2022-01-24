#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int int64; } ;
struct mpv_node {TYPE_1__ u; } ;
struct mp_pass_perf {int last; int avg; int peak; int count; int* samples; } ;
struct mp_frame_perf {int count; int /*<<< orphan*/ * desc; struct mp_pass_perf* perf; } ;

/* Variables and functions */
 int /*<<< orphan*/  MPV_FORMAT_INT64 ; 
 int /*<<< orphan*/  MPV_FORMAT_NODE_ARRAY ; 
 int /*<<< orphan*/  MPV_FORMAT_NODE_MAP ; 
 struct mpv_node* FUNC0 (struct mpv_node*,int /*<<< orphan*/ ) ; 
 struct mpv_node* FUNC1 (struct mpv_node*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct mpv_node*,char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(struct mpv_node *node, struct mp_frame_perf *perf)
{
    for (int i = 0; i < perf->count; i++) {
        struct mp_pass_perf *data = &perf->perf[i];
        struct mpv_node *pass = FUNC0(node, MPV_FORMAT_NODE_MAP);

        FUNC2(pass, "desc", perf->desc[i]);
        FUNC1(pass, "last", MPV_FORMAT_INT64)->u.int64 = data->last;
        FUNC1(pass, "avg", MPV_FORMAT_INT64)->u.int64 = data->avg;
        FUNC1(pass, "peak", MPV_FORMAT_INT64)->u.int64 = data->peak;
        FUNC1(pass, "count", MPV_FORMAT_INT64)->u.int64 = data->count;
        struct mpv_node *samples = FUNC1(pass, "samples", MPV_FORMAT_NODE_ARRAY);
        for (int n = 0; n < data->count; n++)
            FUNC0(samples, MPV_FORMAT_INT64)->u.int64 = data->samples[n];
    }
}