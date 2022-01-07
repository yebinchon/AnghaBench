
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int shutdown; int * session; int session_ctx; } ;
typedef TYPE_1__ SSL ;


 int SSL_CTX_remove_session (int ,int *) ;
 int SSL_SENT_SHUTDOWN ;
 scalar_t__ SSL_in_before (TYPE_1__*) ;
 scalar_t__ SSL_in_init (TYPE_1__*) ;

int ssl_clear_bad_session(SSL *s)
{
    if ((s->session != ((void*)0)) &&
        !(s->shutdown & SSL_SENT_SHUTDOWN) &&
        !(SSL_in_init(s) || SSL_in_before(s))) {
        SSL_CTX_remove_session(s->session_ctx, s->session);
        return 1;
    } else
        return 0;
}
