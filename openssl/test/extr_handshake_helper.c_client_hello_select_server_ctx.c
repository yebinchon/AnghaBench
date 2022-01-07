
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
 int SSL_clear_options (int *,int) ;
 int SSL_client_hello_get0_ext (int *,int ,unsigned char const**,size_t*) ;
 scalar_t__ SSL_get_ex_data (int *,int ) ;
 int SSL_set_SSL_CTX (int *,int *) ;
 int SSL_set_options (int *,int ) ;
 int TLSEXT_NAMETYPE_host_name ;
 int TLSEXT_TYPE_server_name ;
 int ex_data_idx ;
 size_t strlen (char*) ;
 scalar_t__ strncmp (char const*,char*,size_t) ;

__attribute__((used)) static int client_hello_select_server_ctx(SSL *s, void *arg, int ignore)
{
    const char *servername;
    const unsigned char *p;
    size_t len, remaining;
    HANDSHAKE_EX_DATA *ex_data =
        (HANDSHAKE_EX_DATA*)(SSL_get_ex_data(s, ex_data_idx));





    if (!SSL_client_hello_get0_ext(s, TLSEXT_TYPE_server_name, &p,
                                   &remaining) ||
        remaining <= 2)
        return 0;

    len = (*(p++) << 8);
    len += *(p++);
    if (len + 2 != remaining)
        return 0;
    remaining = len;




    if (remaining == 0 || *p++ != TLSEXT_NAMETYPE_host_name)
        return 0;
    remaining--;

    if (remaining <= 2)
        return 0;
    len = (*(p++) << 8);
    len += *(p++);
    if (len + 2 > remaining)
        return 0;
    remaining = len;
    servername = (const char *)p;

    if (len == strlen("server2") && strncmp(servername, "server2", len) == 0) {
        SSL_CTX *new_ctx = arg;
        SSL_set_SSL_CTX(s, new_ctx);





        SSL_clear_options(s, 0xFFFFFFFFL);
        SSL_set_options(s, SSL_CTX_get_options(new_ctx));

        ex_data->servername = SSL_TEST_SERVERNAME_SERVER2;
        return 1;
    } else if (len == strlen("server1") &&
               strncmp(servername, "server1", len) == 0) {
        ex_data->servername = SSL_TEST_SERVERNAME_SERVER1;
        return 1;
    } else if (ignore) {
        ex_data->servername = SSL_TEST_SERVERNAME_SERVER1;
        return 1;
    }
    return 0;
}
