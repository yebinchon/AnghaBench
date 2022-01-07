
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {int max_surfaces; scalar_t__ num_surfaces; } ;
struct TYPE_7__ {int max_surfaces; scalar_t__ num_surfaces; } ;
struct TYPE_9__ {int num_filters; TYPE_2__ forward; TYPE_1__ backward; scalar_t__ num_output_colors; scalar_t__ num_input_colors; int * filters; int output_colors; int input_colors; } ;
struct priv {int num_buffers; int queue; TYPE_4__* opts; scalar_t__ do_deint; TYPE_3__ pipe; int context; int display; int * buffers; } ;
struct mp_filter {struct priv* priv; } ;
typedef int VAStatus ;
struct TYPE_11__ {int num_forward_references; int num_backward_references; scalar_t__ num_output_color_standards; scalar_t__ num_input_color_standards; int output_color_standards; int input_color_standards; } ;
typedef TYPE_5__ VAProcPipelineCaps ;
typedef int VABufferID ;
struct TYPE_10__ {int deint_type; scalar_t__ interlaced_only; scalar_t__ reversal_bug; } ;


 int CHECK_VA_STATUS (struct mp_filter*,char*) ;
 int MPMAX (int,int) ;
 int MP_MODE_DEINT ;
 int MP_MODE_INTERLACED_ONLY ;
 int MP_MODE_OUTPUT_FIELDS ;
 scalar_t__ VAProcColorStandardCount ;
 int mp_refqueue_set_mode (int ,int) ;
 int mp_refqueue_set_refs (int ,int,int) ;
 int vaQueryVideoProcPipelineCaps (int ,int ,int *,int,TYPE_5__*) ;

__attribute__((used)) static void update_pipeline(struct mp_filter *vf)
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
    p->pipe.filters = ((void*)0);
    if (!num_filters)
        goto nodeint;
    VAProcPipelineCaps caps = {
        .input_color_standards = p->pipe.input_colors,
        .output_color_standards = p->pipe.output_colors,
        .num_input_color_standards = VAProcColorStandardCount,
        .num_output_color_standards = VAProcColorStandardCount,
    };
    VAStatus status = vaQueryVideoProcPipelineCaps(p->display, p->context,
                                                   filters, num_filters, &caps);
    if (!CHECK_VA_STATUS(vf, "vaQueryVideoProcPipelineCaps()"))
        goto nodeint;
    p->pipe.filters = filters;
    p->pipe.num_filters = num_filters;
    p->pipe.num_input_colors = caps.num_input_color_standards;
    p->pipe.num_output_colors = caps.num_output_color_standards;
    p->pipe.forward.max_surfaces = caps.num_forward_references;
    p->pipe.backward.max_surfaces = caps.num_backward_references;
    if (p->opts->reversal_bug) {
        int max = MPMAX(caps.num_forward_references, caps.num_backward_references);
        mp_refqueue_set_refs(p->queue, max, max);
    } else {
        mp_refqueue_set_refs(p->queue, p->pipe.backward.max_surfaces,
                                       p->pipe.forward.max_surfaces);
    }
    mp_refqueue_set_mode(p->queue,
        (p->do_deint ? MP_MODE_DEINT : 0) |
        (p->opts->deint_type >= 2 ? MP_MODE_OUTPUT_FIELDS : 0) |
        (p->opts->interlaced_only ? MP_MODE_INTERLACED_ONLY : 0));
    return;

nodeint:
    mp_refqueue_set_refs(p->queue, 0, 0);
    mp_refqueue_set_mode(p->queue, 0);
}
