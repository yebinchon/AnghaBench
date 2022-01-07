
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int SSL ;


 unsigned int SSL3_VERSION ;
 int SSL_AD_INTERNAL_ERROR ;
 int SSL_AD_PROTOCOL_VERSION ;
 int SSL_AD_UNRECOGNIZED_NAME ;
 int SSL_CLIENT_HELLO_ERROR ;
 int SSL_CLIENT_HELLO_SUCCESS ;
 scalar_t__ SSL_client_hello_get0_ciphers (int *,unsigned char const**) ;
 scalar_t__ SSL_client_hello_get0_compression_methods (int *,unsigned char const**) ;
 unsigned int SSL_client_hello_get0_legacy_version (int *) ;
 scalar_t__ SSL_client_hello_get0_random (int *,unsigned char const**) ;
 int SSL_client_hello_get0_session_id (int *,unsigned char const**) ;
 int SSL_set_max_proto_version (int *,int ) ;
 int TLS1_1_VERSION ;
 unsigned int TLS1_2_VERSION ;
 int client_hello_select_server_ctx (int *,void*,int ) ;

__attribute__((used)) static int client_hello_nov12_cb(SSL *s, int *al, void *arg)
{
    int ret;
    unsigned int v;
    const unsigned char *p;

    v = SSL_client_hello_get0_legacy_version(s);
    if (v > TLS1_2_VERSION || v < SSL3_VERSION) {
        *al = SSL_AD_PROTOCOL_VERSION;
        return SSL_CLIENT_HELLO_ERROR;
    }
    (void)SSL_client_hello_get0_session_id(s, &p);
    if (p == ((void*)0) ||
        SSL_client_hello_get0_random(s, &p) == 0 ||
        SSL_client_hello_get0_ciphers(s, &p) == 0 ||
        SSL_client_hello_get0_compression_methods(s, &p) == 0) {
        *al = SSL_AD_INTERNAL_ERROR;
        return SSL_CLIENT_HELLO_ERROR;
    }
    ret = client_hello_select_server_ctx(s, arg, 0);
    SSL_set_max_proto_version(s, TLS1_1_VERSION);
    if (!ret) {
        *al = SSL_AD_UNRECOGNIZED_NAME;
        return SSL_CLIENT_HELLO_ERROR;
    }
    return SSL_CLIENT_HELLO_SUCCESS;
}
