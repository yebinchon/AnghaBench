
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int SSL ;


 int SSL_AD_UNRECOGNIZED_NAME ;
 int SSL_CLIENT_HELLO_ERROR ;
 int SSL_CLIENT_HELLO_SUCCESS ;
 int client_hello_select_server_ctx (int *,void*,int) ;

__attribute__((used)) static int client_hello_ignore_cb(SSL *s, int *al, void *arg)
{
    if (!client_hello_select_server_ctx(s, arg, 1)) {
        *al = SSL_AD_UNRECOGNIZED_NAME;
        return SSL_CLIENT_HELLO_ERROR;
    }
    return SSL_CLIENT_HELLO_SUCCESS;
}
