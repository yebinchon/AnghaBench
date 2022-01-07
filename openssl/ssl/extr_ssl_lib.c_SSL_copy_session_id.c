
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct TYPE_13__ {int lock; int references; } ;
struct TYPE_12__ {scalar_t__ sid_ctx_length; int sid_ctx; TYPE_5__* cert; TYPE_1__* method; } ;
struct TYPE_11__ {scalar_t__ (* ssl_new ) (TYPE_2__*) ;int (* ssl_free ) (TYPE_2__*) ;} ;
typedef TYPE_2__ SSL ;


 int CRYPTO_UP_REF (int *,int*,int ) ;
 int SSL_get_session (TYPE_2__ const*) ;
 int SSL_set_session (TYPE_2__*,int ) ;
 int SSL_set_session_id_context (TYPE_2__*,int ,int) ;
 int ssl_cert_free (TYPE_5__*) ;
 int stub1 (TYPE_2__*) ;
 scalar_t__ stub2 (TYPE_2__*) ;

int SSL_copy_session_id(SSL *t, const SSL *f)
{
    int i;

    if (!SSL_set_session(t, SSL_get_session(f))) {
        return 0;
    }




    if (t->method != f->method) {
        t->method->ssl_free(t);
        t->method = f->method;
        if (t->method->ssl_new(t) == 0)
            return 0;
    }

    CRYPTO_UP_REF(&f->cert->references, &i, f->cert->lock);
    ssl_cert_free(t->cert);
    t->cert = f->cert;
    if (!SSL_set_session_id_context(t, f->sid_ctx, (int)f->sid_ctx_length)) {
        return 0;
    }

    return 1;
}
