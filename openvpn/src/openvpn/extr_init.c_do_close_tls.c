
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ pulled_options_state; int * options_string_remote; int * options_string_local; int * tls_multi; } ;
struct context {TYPE_1__ c2; } ;


 int free (int *) ;
 int md_ctx_cleanup (scalar_t__) ;
 int md_ctx_free (scalar_t__) ;
 int tls_multi_free (int *,int) ;

__attribute__((used)) static void
do_close_tls(struct context *c)
{
    if (c->c2.tls_multi)
    {
        tls_multi_free(c->c2.tls_multi, 1);
        c->c2.tls_multi = ((void*)0);
    }
    if (c->c2.pulled_options_state)
    {
        md_ctx_cleanup(c->c2.pulled_options_state);
        md_ctx_free(c->c2.pulled_options_state);
    }
}
