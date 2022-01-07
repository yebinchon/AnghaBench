
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {void* servername; } ;
typedef int SSL_CTX ;
typedef int SSL ;
typedef TYPE_1__ HANDSHAKE_EX_DATA ;


 int SSL_CTX_get_options (int *) ;
 void* SSL_TEST_SERVERNAME_SERVER1 ;
 void* SSL_TEST_SERVERNAME_SERVER2 ;
 int SSL_TLSEXT_ERR_ALERT_FATAL ;
 int SSL_TLSEXT_ERR_NOACK ;
 int SSL_TLSEXT_ERR_OK ;
 int SSL_clear_options (int *,int) ;
 scalar_t__ SSL_get_ex_data (int *,int ) ;
 char* SSL_get_servername (int *,int ) ;
 int SSL_set_SSL_CTX (int *,int *) ;
 int SSL_set_options (int *,int ) ;
 int TLSEXT_NAMETYPE_host_name ;
 int ex_data_idx ;
 scalar_t__ strcmp (char const*,char*) ;

__attribute__((used)) static int select_server_ctx(SSL *s, void *arg, int ignore)
{
    const char *servername = SSL_get_servername(s, TLSEXT_NAMETYPE_host_name);
    HANDSHAKE_EX_DATA *ex_data =
        (HANDSHAKE_EX_DATA*)(SSL_get_ex_data(s, ex_data_idx));

    if (servername == ((void*)0)) {
        ex_data->servername = SSL_TEST_SERVERNAME_SERVER1;
        return SSL_TLSEXT_ERR_NOACK;
    }

    if (strcmp(servername, "server2") == 0) {
        SSL_CTX *new_ctx = (SSL_CTX*)arg;
        SSL_set_SSL_CTX(s, new_ctx);





        SSL_clear_options(s, 0xFFFFFFFFL);
        SSL_set_options(s, SSL_CTX_get_options(new_ctx));

        ex_data->servername = SSL_TEST_SERVERNAME_SERVER2;
        return SSL_TLSEXT_ERR_OK;
    } else if (strcmp(servername, "server1") == 0) {
        ex_data->servername = SSL_TEST_SERVERNAME_SERVER1;
        return SSL_TLSEXT_ERR_OK;
    } else if (ignore) {
        ex_data->servername = SSL_TEST_SERVERNAME_SERVER1;
        return SSL_TLSEXT_ERR_NOACK;
    } else {

        return SSL_TLSEXT_ERR_ALERT_FATAL;
    }
}
