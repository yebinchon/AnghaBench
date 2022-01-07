
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int alpn_protocols_len; int alpn_protocols; } ;
typedef int SSL ;
typedef TYPE_1__ CTX_DATA ;


 int OPENSSL_NPN_NEGOTIATED ;
 int SSL_TLSEXT_ERR_ALERT_FATAL ;
 int SSL_TLSEXT_ERR_OK ;
 int SSL_select_next_proto (unsigned char**,unsigned char*,int ,int ,unsigned char const*,unsigned int) ;

__attribute__((used)) static int server_alpn_cb(SSL *s, const unsigned char **out,
                          unsigned char *outlen, const unsigned char *in,
                          unsigned int inlen, void *arg)
{
    CTX_DATA *ctx_data = (CTX_DATA*)(arg);
    int ret;


    unsigned char *tmp_out;






    ret = SSL_select_next_proto(&tmp_out, outlen,
                                ctx_data->alpn_protocols,
                                ctx_data->alpn_protocols_len, in, inlen);

    *out = tmp_out;

    return ret == OPENSSL_NPN_NEGOTIATED ? SSL_TLSEXT_ERR_OK
        : SSL_TLSEXT_ERR_ALERT_FATAL;
}
