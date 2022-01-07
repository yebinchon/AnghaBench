
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {TYPE_1__* method; int handshake_func; scalar_t__ shutdown; scalar_t__ server; } ;
struct TYPE_6__ {int ssl_connect; } ;
typedef TYPE_2__ SSL ;


 int clear_ciphers (TYPE_2__*) ;
 int ossl_statem_clear (TYPE_2__*) ;

void SSL_set_connect_state(SSL *s)
{
    s->server = 0;
    s->shutdown = 0;
    ossl_statem_clear(s);
    s->handshake_func = s->method->ssl_connect;
    clear_ciphers(s);
}
