
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ servername; scalar_t__ enable_pha; } ;
struct TYPE_5__ {TYPE_1__ client; } ;
typedef TYPE_2__ SSL_TEST_EXTRA_CONF ;
typedef int SSL ;


 scalar_t__ SSL_TEST_SERVERNAME_NONE ;
 int SSL_set_post_handshake_auth (int *,int) ;
 int SSL_set_tlsext_host_name (int *,int ) ;
 int ssl_servername_name (scalar_t__) ;

__attribute__((used)) static void configure_handshake_ssl(SSL *server, SSL *client,
                                    const SSL_TEST_EXTRA_CONF *extra)
{
    if (extra->client.servername != SSL_TEST_SERVERNAME_NONE)
        SSL_set_tlsext_host_name(client,
                                 ssl_servername_name(extra->client.servername));
    if (extra->client.enable_pha)
        SSL_set_post_handshake_auth(client, 1);
}
