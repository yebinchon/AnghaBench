
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct lavfi {int failed; int num_all_pads; int f; TYPE_1__** all_pads; int graph_string; scalar_t__ graph; int direct_filter_opts; int log; scalar_t__ direct_filter; int graph_opts; } ;
struct TYPE_8__ {int nb_outputs; int output_pads; int nb_inputs; int input_pads; int priv; } ;
struct TYPE_7__ {int filter; } ;
typedef int AVFilterInOut ;
typedef TYPE_2__ AVFilterContext ;


 int MP_FATAL (struct lavfi*,char*,...) ;
 int MP_PIN_IN ;
 int MP_PIN_OUT ;
 int abort () ;
 int add_pads (struct lavfi*,int ,int *,int) ;
 int add_pads_direct (struct lavfi*,int ,TYPE_2__*,int ,int ,int) ;
 int assert (int) ;
 int avfilter_get_by_name (int ) ;
 scalar_t__ avfilter_graph_alloc () ;
 TYPE_2__* avfilter_graph_alloc_filter (scalar_t__,int ,char*) ;
 scalar_t__ avfilter_graph_parse2 (scalar_t__,int ,int **,int **) ;
 scalar_t__ avfilter_init_str (TYPE_2__*,int *) ;
 int avfilter_inout_free (int **) ;
 int free_graph (struct lavfi*) ;
 int mp_filter_internal_mark_failed (int ) ;
 scalar_t__ mp_set_avopts (int ,scalar_t__,int ) ;
 scalar_t__ mp_set_avopts_pos (int ,TYPE_2__*,int ,int ) ;

__attribute__((used)) static void precreate_graph(struct lavfi *c, bool first_init)
{
    assert(!c->graph);

    c->failed = 0;

    c->graph = avfilter_graph_alloc();
    if (!c->graph)
        abort();

    if (mp_set_avopts(c->log, c->graph, c->graph_opts) < 0)
        goto error;

    if (c->direct_filter) {
        AVFilterContext *filter = avfilter_graph_alloc_filter(c->graph,
                            avfilter_get_by_name(c->graph_string), "filter");
        if (!filter) {
            MP_FATAL(c, "filter '%s' not found or failed to allocate\n",
                     c->graph_string);
            goto error;
        }

        if (mp_set_avopts_pos(c->log, filter, filter->priv,
                              c->direct_filter_opts) < 0)
            goto error;

        if (avfilter_init_str(filter, ((void*)0)) < 0) {
            MP_FATAL(c, "filter failed to initialize\n");
            goto error;
        }

        add_pads_direct(c, MP_PIN_IN, filter, filter->input_pads,
                        filter->nb_inputs, first_init);
        add_pads_direct(c, MP_PIN_OUT, filter, filter->output_pads,
                        filter->nb_outputs, first_init);
    } else {
        AVFilterInOut *in = ((void*)0), *out = ((void*)0);
        if (avfilter_graph_parse2(c->graph, c->graph_string, &in, &out) < 0) {
            MP_FATAL(c, "parsing the filter graph failed\n");
            goto error;
        }
        add_pads(c, MP_PIN_IN, in, first_init);
        add_pads(c, MP_PIN_OUT, out, first_init);
        avfilter_inout_free(&in);
        avfilter_inout_free(&out);
    }

    for (int n = 0; n < c->num_all_pads; n++)
        c->failed |= !c->all_pads[n]->filter;

    if (c->failed)
        goto error;

    return;

error:
    free_graph(c);
    c->failed = 1;
    mp_filter_internal_mark_failed(c->f);
    return;
}
