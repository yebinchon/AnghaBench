
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {TYPE_4__* tls_auth_standalone; int frame; TYPE_3__* tls_multi; } ;
struct context {TYPE_2__ c2; } ;
struct TYPE_8__ {int frame; } ;
struct TYPE_5__ {int frame; } ;
struct TYPE_7__ {TYPE_1__ opt; } ;


 int ASSERT (int) ;
 int D_MTU_INFO ;
 scalar_t__ EXPANDED_SIZE (int *) ;
 int frame_print (int *,int ,char*) ;
 int tls_auth_standalone_finalize (TYPE_4__*,int *) ;
 int tls_multi_init_finalize (TYPE_3__*,int *) ;

__attribute__((used)) static void
do_init_finalize_tls_frame(struct context *c)
{
    if (c->c2.tls_multi)
    {
        tls_multi_init_finalize(c->c2.tls_multi, &c->c2.frame);
        ASSERT(EXPANDED_SIZE(&c->c2.tls_multi->opt.frame) <=
               EXPANDED_SIZE(&c->c2.frame));
        frame_print(&c->c2.tls_multi->opt.frame, D_MTU_INFO,
                    "Control Channel MTU parms");
    }
    if (c->c2.tls_auth_standalone)
    {
        tls_auth_standalone_finalize(c->c2.tls_auth_standalone, &c->c2.frame);
        frame_print(&c->c2.tls_auth_standalone->frame, D_MTU_INFO,
                    "TLS-Auth MTU parms");
    }
}
