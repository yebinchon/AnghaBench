
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct mp_stream_info {scalar_t__ hwdec_devs; } ;
struct mp_hwdec_ctx {scalar_t__ av_device_ref; } ;
struct lavfi_pad {TYPE_2__* buffer; int timebase; } ;
struct lavfi {int initialized; int failed; int num_out_pads; int direct_filter; struct lavfi_pad** out_pads; int f; TYPE_4__* graph; } ;
struct TYPE_8__ {int nb_filters; TYPE_3__** filters; } ;
struct TYPE_7__ {int hw_device_ctx; } ;
struct TYPE_6__ {TYPE_1__** inputs; } ;
struct TYPE_5__ {int time_base; } ;
typedef TYPE_3__ AVFilterContext ;


 int MP_FATAL (struct lavfi*,char*) ;
 int assert (int) ;
 int av_buffer_ref (scalar_t__) ;
 scalar_t__ avfilter_graph_config (TYPE_4__*,int *) ;
 int dump_graph (struct lavfi*) ;
 int free_graph (struct lavfi*) ;
 struct mp_hwdec_ctx* hwdec_devices_get_first (scalar_t__) ;
 scalar_t__ init_pads (struct lavfi*) ;
 struct mp_stream_info* mp_filter_find_stream_info (int ) ;
 int mp_filter_internal_mark_failed (int ) ;
 int precreate_graph (struct lavfi*,int) ;

__attribute__((used)) static void init_graph(struct lavfi *c)
{
    assert(!c->initialized);

    if (!c->graph)
        precreate_graph(c, 0);

    if (init_pads(c)) {
        struct mp_stream_info *info = mp_filter_find_stream_info(c->f);
        if (info && info->hwdec_devs) {
            struct mp_hwdec_ctx *hwdec = hwdec_devices_get_first(info->hwdec_devs);
            for (int n = 0; n < c->graph->nb_filters; n++) {
                AVFilterContext *filter = c->graph->filters[n];
                if (hwdec && hwdec->av_device_ref)
                    filter->hw_device_ctx = av_buffer_ref(hwdec->av_device_ref);
            }
        }


        if (avfilter_graph_config(c->graph, ((void*)0)) < 0) {
            MP_FATAL(c, "failed to configure the filter graph\n");
            free_graph(c);
            c->failed = 1;
            mp_filter_internal_mark_failed(c->f);
            return;
        }


        for (int n = 0; n < c->num_out_pads; n++) {
            struct lavfi_pad *pad = c->out_pads[n];

            pad->timebase = pad->buffer->inputs[0]->time_base;
        }

        c->initialized = 1;

        if (!c->direct_filter)
            dump_graph(c);
    }
}
