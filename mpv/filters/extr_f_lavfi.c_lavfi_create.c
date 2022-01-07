
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mp_lavfi {struct mp_filter* f; } ;
struct mp_filter {struct lavfi* priv; } ;
struct lavfi_user_opts {int fix_pts; int graph; int avopts; int type; int filter_opts; int filter_name; scalar_t__ is_bridge; } ;
struct lavfi {int emulate_audio_pts; } ;


 struct mp_lavfi* mp_lavfi_create_filter (struct mp_filter*,int ,int,int ,int ,int ) ;
 struct mp_lavfi* mp_lavfi_create_graph (struct mp_filter*,int ,int,int ,int ) ;
 int talloc_free (struct lavfi_user_opts*) ;

__attribute__((used)) static struct mp_filter *lavfi_create(struct mp_filter *parent, void *options)
{
    struct lavfi_user_opts *opts = options;
    struct mp_lavfi *l;
    if (opts->is_bridge) {
        l = mp_lavfi_create_filter(parent, opts->type, 1, opts->avopts,
                                   opts->filter_name, opts->filter_opts);
    } else {
        l = mp_lavfi_create_graph(parent, opts->type, 1,
                                  opts->avopts, opts->graph);
    }
    if (l) {
        struct lavfi *c = l->f->priv;
        c->emulate_audio_pts = opts->fix_pts;
    }
    talloc_free(opts);
    return l ? l->f : ((void*)0);
}
