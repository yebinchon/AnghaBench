
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mp_lavfi {int dummy; } ;
struct mp_filter {int dummy; } ;
struct lavfi {int force_type; int force_bidir; int direct_filter; void* direct_filter_opts; int graph_string; void* graph_opts; } ;
typedef enum mp_frame_type { ____Placeholder_mp_frame_type } mp_frame_type ;


 struct mp_lavfi* do_init (struct lavfi*) ;
 struct lavfi* lavfi_alloc (struct mp_filter*) ;
 void* mp_dup_str_array (struct lavfi*,char**) ;
 int talloc_strdup (struct lavfi*,char const*) ;

struct mp_lavfi *mp_lavfi_create_filter(struct mp_filter *parent,
                                        enum mp_frame_type type, bool bidir,
                                        char **graph_opts,
                                        const char *filter, char **filter_opts)
{
    struct lavfi *c = lavfi_alloc(parent);
    if (!c)
        return ((void*)0);

    c->force_type = type;
    c->force_bidir = bidir;
    c->graph_opts = mp_dup_str_array(c, graph_opts);
    c->graph_string = talloc_strdup(c, filter);
    c->direct_filter_opts = mp_dup_str_array(c, filter_opts);
    c->direct_filter = 1;

    return do_init(c);
}
