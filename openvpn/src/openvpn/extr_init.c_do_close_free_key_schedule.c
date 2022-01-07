
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_8__ {int tls_crypt_v2_wkc; int tls_wrap_key; } ;
struct TYPE_7__ {TYPE_4__ ks; } ;
struct TYPE_6__ {scalar_t__ persist_key; } ;
struct context {TYPE_3__ c1; TYPE_2__ options; TYPE_1__* sig; } ;
struct TYPE_5__ {scalar_t__ signal_received; } ;


 int CLEAR (int ) ;
 scalar_t__ SIGUSR1 ;
 int buf_clear (int *) ;
 int free_buf (int *) ;
 int free_key_ctx_bi (int *) ;
 int key_schedule_free (TYPE_4__*,int) ;

__attribute__((used)) static void
do_close_free_key_schedule(struct context *c, bool free_ssl_ctx)
{




    free_key_ctx_bi(&c->c1.ks.tls_wrap_key);
    CLEAR(c->c1.ks.tls_wrap_key);
    buf_clear(&c->c1.ks.tls_crypt_v2_wkc);
    free_buf(&c->c1.ks.tls_crypt_v2_wkc);

    if (!(c->sig->signal_received == SIGUSR1 && c->options.persist_key))
    {
        key_schedule_free(&c->c1.ks, free_ssl_ctx);
    }
}
