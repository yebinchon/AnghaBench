
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_12__ {scalar_t__ method; TYPE_2__* session; int verify_result; TYPE_1__* ctx; } ;
struct TYPE_11__ {int verify_result; } ;
struct TYPE_10__ {scalar_t__ method; } ;
typedef TYPE_2__ SSL_SESSION ;
typedef TYPE_3__ SSL ;


 int SSL_SESSION_free (TYPE_2__*) ;
 int SSL_SESSION_up_ref (TYPE_2__*) ;
 int SSL_set_ssl_method (TYPE_3__*,scalar_t__) ;
 int ssl_clear_bad_session (TYPE_3__*) ;

int SSL_set_session(SSL *s, SSL_SESSION *session)
{
    ssl_clear_bad_session(s);
    if (s->ctx->method != s->method) {
        if (!SSL_set_ssl_method(s, s->ctx->method))
            return 0;
    }

    if (session != ((void*)0)) {
        SSL_SESSION_up_ref(session);
        s->verify_result = session->verify_result;
    }
    SSL_SESSION_free(s->session);
    s->session = session;

    return 1;
}
