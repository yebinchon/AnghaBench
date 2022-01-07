
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lavfi_pad {int filter_pad; int buffer_is_eof; int in_fmt; int * buffer; int * filter; } ;
struct lavfi {int num_all_pads; int initialized; int draining_recover; scalar_t__ delay; scalar_t__ in_samples; int in_pts; struct lavfi_pad** all_pads; int graph; } ;


 int MP_NOPTS_VALUE ;
 int avfilter_graph_free (int *) ;
 int mp_frame_unref (int *) ;

__attribute__((used)) static void free_graph(struct lavfi *c)
{
    avfilter_graph_free(&c->graph);
    for (int n = 0; n < c->num_all_pads; n++) {
        struct lavfi_pad *pad = c->all_pads[n];

        pad->filter = ((void*)0);
        pad->filter_pad = -1;
        pad->buffer = ((void*)0);
        mp_frame_unref(&pad->in_fmt);
        pad->buffer_is_eof = 0;
    }
    c->initialized = 0;
    c->draining_recover = 0;
    c->in_pts = MP_NOPTS_VALUE;
    c->in_samples = 0;
    c->delay = 0;
}
