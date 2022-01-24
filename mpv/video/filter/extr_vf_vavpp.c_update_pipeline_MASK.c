#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_5__ ;
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {int max_surfaces; scalar_t__ num_surfaces; } ;
struct TYPE_7__ {int max_surfaces; scalar_t__ num_surfaces; } ;
struct TYPE_9__ {int num_filters; TYPE_2__ forward; TYPE_1__ backward; scalar_t__ num_output_colors; scalar_t__ num_input_colors; int /*<<< orphan*/ * filters; int /*<<< orphan*/  output_colors; int /*<<< orphan*/  input_colors; } ;
struct priv {int num_buffers; int /*<<< orphan*/  queue; TYPE_4__* opts; scalar_t__ do_deint; TYPE_3__ pipe; int /*<<< orphan*/  context; int /*<<< orphan*/  display; int /*<<< orphan*/ * buffers; } ;
struct mp_filter {struct priv* priv; } ;
typedef  int /*<<< orphan*/  VAStatus ;
struct TYPE_11__ {int num_forward_references; int num_backward_references; scalar_t__ num_output_color_standards; scalar_t__ num_input_color_standards; int /*<<< orphan*/  output_color_standards; int /*<<< orphan*/  input_color_standards; } ;
typedef  TYPE_5__ VAProcPipelineCaps ;
typedef  int /*<<< orphan*/  VABufferID ;
struct TYPE_10__ {int deint_type; scalar_t__ interlaced_only; scalar_t__ reversal_bug; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct mp_filter*,char*) ; 
 int FUNC1 (int,int) ; 
 int MP_MODE_DEINT ; 
 int MP_MODE_INTERLACED_ONLY ; 
 int MP_MODE_OUTPUT_FIELDS ; 
 scalar_t__ VAProcColorStandardCount ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,TYPE_5__*) ; 

__attribute__((used)) static void FUNC5(struct mp_filter *vf)
{
    struct priv *p = vf->priv;
    VABufferID *filters = p->buffers;
    int num_filters = p->num_buffers;
    if (p->opts->deint_type && !p->do_deint) {
        filters++;
        num_filters--;
    }
    p->pipe.forward.num_surfaces = p->pipe.backward.num_surfaces = 0;
    p->pipe.num_input_colors = p->pipe.num_output_colors = 0;
    p->pipe.num_filters = 0;
    p->pipe.filters = NULL;
    if (!num_filters)
        goto nodeint;
    VAProcPipelineCaps caps = {
        .input_color_standards = p->pipe.input_colors,
        .output_color_standards = p->pipe.output_colors,
        .num_input_color_standards = VAProcColorStandardCount,
        .num_output_color_standards = VAProcColorStandardCount,
    };
    VAStatus status = FUNC4(p->display, p->context,
                                                   filters, num_filters, &caps);
    if (!FUNC0(vf, "vaQueryVideoProcPipelineCaps()"))
        goto nodeint;
    p->pipe.filters = filters;
    p->pipe.num_filters = num_filters;
    p->pipe.num_input_colors = caps.num_input_color_standards;
    p->pipe.num_output_colors = caps.num_output_color_standards;
    p->pipe.forward.max_surfaces = caps.num_forward_references;
    p->pipe.backward.max_surfaces = caps.num_backward_references;
    if (p->opts->reversal_bug) {
        int max = FUNC1(caps.num_forward_references, caps.num_backward_references);
        FUNC3(p->queue, max, max);
    } else {
        FUNC3(p->queue, p->pipe.backward.max_surfaces,
                                       p->pipe.forward.max_surfaces);
    }
    FUNC2(p->queue,
        (p->do_deint ? MP_MODE_DEINT : 0) |
        (p->opts->deint_type >= 2 ? MP_MODE_OUTPUT_FIELDS : 0) |
        (p->opts->interlaced_only ? MP_MODE_INTERLACED_ONLY : 0));
    return;

nodeint:
    FUNC3(p->queue, 0, 0);
    FUNC2(p->queue, 0);
}