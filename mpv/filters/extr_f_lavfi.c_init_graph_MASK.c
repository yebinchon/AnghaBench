#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct mp_stream_info {scalar_t__ hwdec_devs; } ;
struct mp_hwdec_ctx {scalar_t__ av_device_ref; } ;
struct lavfi_pad {TYPE_2__* buffer; int /*<<< orphan*/  timebase; } ;
struct lavfi {int initialized; int failed; int num_out_pads; int /*<<< orphan*/  direct_filter; struct lavfi_pad** out_pads; int /*<<< orphan*/  f; TYPE_4__* graph; } ;
struct TYPE_8__ {int nb_filters; TYPE_3__** filters; } ;
struct TYPE_7__ {int /*<<< orphan*/  hw_device_ctx; } ;
struct TYPE_6__ {TYPE_1__** inputs; } ;
struct TYPE_5__ {int /*<<< orphan*/  time_base; } ;
typedef  TYPE_3__ AVFilterContext ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct lavfi*,char*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 scalar_t__ FUNC3 (TYPE_4__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct lavfi*) ; 
 int /*<<< orphan*/  FUNC5 (struct lavfi*) ; 
 struct mp_hwdec_ctx* FUNC6 (scalar_t__) ; 
 scalar_t__ FUNC7 (struct lavfi*) ; 
 struct mp_stream_info* FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct lavfi*,int) ; 

__attribute__((used)) static void FUNC11(struct lavfi *c)
{
    FUNC1(!c->initialized);

    if (!c->graph)
        FUNC10(c, false);

    if (FUNC7(c)) {
        struct mp_stream_info *info = FUNC8(c->f);
        if (info && info->hwdec_devs) {
            struct mp_hwdec_ctx *hwdec = FUNC6(info->hwdec_devs);
            for (int n = 0; n < c->graph->nb_filters; n++) {
                AVFilterContext *filter = c->graph->filters[n];
                if (hwdec && hwdec->av_device_ref)
                    filter->hw_device_ctx = FUNC2(hwdec->av_device_ref);
            }
        }

        // And here the actual libavfilter initialization happens.
        if (FUNC3(c->graph, NULL) < 0) {
            FUNC0(c, "failed to configure the filter graph\n");
            FUNC5(c);
            c->failed = true;
            FUNC9(c->f);
            return;
        }

        // The timebase is available after configuring.
        for (int n = 0; n < c->num_out_pads; n++) {
            struct lavfi_pad *pad = c->out_pads[n];

            pad->timebase = pad->buffer->inputs[0]->time_base;
        }

        c->initialized = true;

        if (!c->direct_filter) // (output uninteresting for direct filters)
            FUNC4(c);
    }
}