
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mp_filter {struct lavfi* priv; } ;
struct lavfi {int num_out_pads; int f; scalar_t__ failed; TYPE_1__** out_pads; scalar_t__ draining_recover; scalar_t__ initialized; } ;
struct TYPE_2__ {int buffer_is_eof; } ;


 int MP_VERBOSE (struct lavfi*,char*) ;
 int feed_input_pads (struct lavfi*) ;
 int free_graph (struct lavfi*) ;
 int init_graph (struct lavfi*) ;
 int mp_filter_internal_mark_failed (int ) ;
 int mp_filter_internal_mark_progress (int ) ;
 int read_output_pads (struct lavfi*) ;

__attribute__((used)) static void lavfi_process(struct mp_filter *f)
{
    struct lavfi *c = f->priv;

    if (!c->initialized)
        init_graph(c);

    while (c->initialized) {
        bool a = read_output_pads(c);
        bool b = feed_input_pads(c);
        if (!a && !b)
            break;
    }


    if (c->draining_recover) {

        bool all_eof = 1;
        for (int n = 0; n < c->num_out_pads; n++)
            all_eof &= c->out_pads[n]->buffer_is_eof;

        if (all_eof) {
            MP_VERBOSE(c, "recovering all eof\n");
            free_graph(c);
            mp_filter_internal_mark_progress(c->f);
        }
    }

    if (c->failed)
        mp_filter_internal_mark_failed(c->f);
}
