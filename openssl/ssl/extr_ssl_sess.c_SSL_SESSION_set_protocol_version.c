
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int ssl_version; } ;
typedef TYPE_1__ SSL_SESSION ;



int SSL_SESSION_set_protocol_version(SSL_SESSION *s, int version)
{
    s->ssl_version = version;
    return 1;
}
