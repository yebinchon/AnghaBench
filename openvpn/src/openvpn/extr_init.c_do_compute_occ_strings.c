
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct gc_arena {int dummy; } ;
struct TYPE_4__ {void* options_string_remote; void* options_string_local; scalar_t__ tls_multi; int frame; } ;
struct TYPE_3__ {int tuntap; } ;
struct context {TYPE_2__ c2; int net_ctx; TYPE_1__ c1; int options; } ;


 int D_SHOW_OCC ;
 int gc_free (struct gc_arena*) ;
 struct gc_arena gc_new () ;
 int msg (int ,char*,int ,void*) ;
 void* options_string (int *,int *,int ,int *,int,struct gc_arena*) ;
 int options_string_version (void*,struct gc_arena*) ;
 int tls_multi_init_set_options (scalar_t__,void*,void*) ;

__attribute__((used)) static void
do_compute_occ_strings(struct context *c)
{
    struct gc_arena gc = gc_new();

    c->c2.options_string_local =
        options_string(&c->options, &c->c2.frame, c->c1.tuntap, &c->net_ctx,
                       0, &gc);
    c->c2.options_string_remote =
        options_string(&c->options, &c->c2.frame, c->c1.tuntap, &c->net_ctx,
                       1, &gc);

    msg(D_SHOW_OCC, "Local Options String (VER=%s): '%s'",
        options_string_version(c->c2.options_string_local, &gc),
        c->c2.options_string_local);
    msg(D_SHOW_OCC, "Expected Remote Options String (VER=%s): '%s'",
        options_string_version(c->c2.options_string_remote, &gc),
        c->c2.options_string_remote);

    if (c->c2.tls_multi)
    {
        tls_multi_init_set_options(c->c2.tls_multi,
                                   c->c2.options_string_local,
                                   c->c2.options_string_remote);
    }

    gc_free(&gc);
}
