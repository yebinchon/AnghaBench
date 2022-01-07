
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int version; int client_version; } ;
typedef TYPE_1__ SSL ;


 int SSL_IS_DTLS (TYPE_1__*) ;
 int SSL_IS_FIRST_HANDSHAKE (TYPE_1__*) ;
 int TLS1_2_VERSION ;
 int ssl_get_min_max_version (TYPE_1__*,int*,int*,int *) ;

int ssl_set_client_hello_version(SSL *s)
{
    int ver_min, ver_max, ret;





    if (!SSL_IS_FIRST_HANDSHAKE(s))
        return 0;

    ret = ssl_get_min_max_version(s, &ver_min, &ver_max, ((void*)0));

    if (ret != 0)
        return ret;

    s->version = ver_max;


    if (!SSL_IS_DTLS(s) && ver_max > TLS1_2_VERSION)
        ver_max = TLS1_2_VERSION;

    s->client_version = ver_max;
    return 0;
}
