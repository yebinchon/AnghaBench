
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int options; } ;
typedef TYPE_1__ SSL ;


 int SSL_OP_NO_TICKET ;
 int SSL_SECOP_TICKET ;
 int ssl_security (TYPE_1__*,int ,int ,int ,int *) ;

int tls_use_ticket(SSL *s)
{
    if ((s->options & SSL_OP_NO_TICKET))
        return 0;
    return ssl_security(s, SSL_SECOP_TICKET, 0, 0, ((void*)0));
}
