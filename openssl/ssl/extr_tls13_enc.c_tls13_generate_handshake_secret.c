
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int handshake_secret; int early_secret; } ;
typedef TYPE_1__ SSL ;


 int ssl_handshake_md (TYPE_1__*) ;
 int tls13_generate_secret (TYPE_1__*,int ,int ,unsigned char const*,size_t,unsigned char*) ;

int tls13_generate_handshake_secret(SSL *s, const unsigned char *insecret,
                                size_t insecretlen)
{

    return tls13_generate_secret(s, ssl_handshake_md(s), s->early_secret,
                                 insecret, insecretlen,
                                 (unsigned char *)&s->handshake_secret);
}
