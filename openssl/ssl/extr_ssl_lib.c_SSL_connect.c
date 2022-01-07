
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int * handshake_func; } ;
typedef TYPE_1__ SSL ;


 int SSL_do_handshake (TYPE_1__*) ;
 int SSL_set_connect_state (TYPE_1__*) ;

int SSL_connect(SSL *s)
{
    if (s->handshake_func == ((void*)0)) {

        SSL_set_connect_state(s);
    }

    return SSL_do_handshake(s);
}
