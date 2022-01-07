
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_8__ {int session_ticket_app_data; int srp_password; int srp_user; int alpn_protocols; int npn_protocols; } ;
struct TYPE_7__ {int session_ticket_app_data; int srp_password; int srp_user; int alpn_protocols; int npn_protocols; } ;
struct TYPE_6__ {int srp_password; int srp_user; int reneg_ciphers; int alpn_protocols; int npn_protocols; } ;
struct TYPE_9__ {TYPE_3__ server2; TYPE_2__ server; TYPE_1__ client; } ;
typedef TYPE_4__ SSL_TEST_EXTRA_CONF ;


 int OPENSSL_free (int ) ;

__attribute__((used)) static void ssl_test_extra_conf_free_data(SSL_TEST_EXTRA_CONF *conf)
{
    OPENSSL_free(conf->client.npn_protocols);
    OPENSSL_free(conf->server.npn_protocols);
    OPENSSL_free(conf->server2.npn_protocols);
    OPENSSL_free(conf->client.alpn_protocols);
    OPENSSL_free(conf->server.alpn_protocols);
    OPENSSL_free(conf->server2.alpn_protocols);
    OPENSSL_free(conf->client.reneg_ciphers);
    OPENSSL_free(conf->server.srp_user);
    OPENSSL_free(conf->server.srp_password);
    OPENSSL_free(conf->server2.srp_user);
    OPENSSL_free(conf->server2.srp_password);
    OPENSSL_free(conf->client.srp_user);
    OPENSSL_free(conf->client.srp_password);
    OPENSSL_free(conf->server.session_ticket_app_data);
    OPENSSL_free(conf->server2.session_ticket_app_data);
}
