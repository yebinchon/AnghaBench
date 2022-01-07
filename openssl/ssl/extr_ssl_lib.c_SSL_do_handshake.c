
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct ssl_async_args {TYPE_2__* s; } ;
struct TYPE_11__ {int (* handshake_func ) (TYPE_2__*) ;int mode; TYPE_1__* method; } ;
struct TYPE_10__ {int (* ssl_renegotiate_check ) (TYPE_2__*,int ) ;} ;
typedef TYPE_2__ SSL ;


 int * ASYNC_get_current_job () ;
 int SSL_F_SSL_DO_HANDSHAKE ;
 int SSL_MODE_ASYNC ;
 int SSL_R_CONNECTION_TYPE_NOT_SET ;
 scalar_t__ SSL_in_before (TYPE_2__*) ;
 scalar_t__ SSL_in_init (TYPE_2__*) ;
 int SSLerr (int ,int ) ;
 int ossl_statem_check_finish_init (TYPE_2__*,int) ;
 int ssl_do_handshake_intern ;
 int ssl_start_async_job (TYPE_2__*,struct ssl_async_args*,int ) ;
 int stub1 (TYPE_2__*,int ) ;
 int stub2 (TYPE_2__*) ;

int SSL_do_handshake(SSL *s)
{
    int ret = 1;

    if (s->handshake_func == ((void*)0)) {
        SSLerr(SSL_F_SSL_DO_HANDSHAKE, SSL_R_CONNECTION_TYPE_NOT_SET);
        return -1;
    }

    ossl_statem_check_finish_init(s, -1);

    s->method->ssl_renegotiate_check(s, 0);

    if (SSL_in_init(s) || SSL_in_before(s)) {
        if ((s->mode & SSL_MODE_ASYNC) && ASYNC_get_current_job() == ((void*)0)) {
            struct ssl_async_args args;

            args.s = s;

            ret = ssl_start_async_job(s, &args, ssl_do_handshake_intern);
        } else {
            ret = s->handshake_func(s);
        }
    }
    return ret;
}
