
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int options; } ;
typedef TYPE_1__ SSL ;


 int SSL_OP_NO_COMPRESSION ;
 int SSL_SECOP_COMPRESSION ;
 int ssl_security (TYPE_1__*,int ,int ,int ,int *) ;

int ssl_allow_compression(SSL *s)
{
    if (s->options & SSL_OP_NO_COMPRESSION)
        return 0;
    return ssl_security(s, SSL_SECOP_COMPRESSION, 0, 0, ((void*)0));
}
