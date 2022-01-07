
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {int server; TYPE_1__* method; int handshake_func; scalar_t__ shutdown; } ;
struct TYPE_6__ {int ssl_accept; } ;
typedef TYPE_2__ SSL ;


 int clear_ciphers (TYPE_2__*) ;
 int ossl_statem_clear (TYPE_2__*) ;

void SSL_set_accept_state(SSL *s)
{
    s->server = 1;
    s->shutdown = 0;
    ossl_statem_clear(s);
    s->handshake_func = s->method->ssl_accept;
    clear_ciphers(s);
}
