
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int SSL ;


 scalar_t__ OPENSSL_NPN_NEGOTIATED ;
 int OPENSSL_free (unsigned char*) ;
 unsigned char* OPENSSL_malloc (unsigned char) ;
 int SSL_TLSEXT_ERR_NOACK ;
 int SSL_TLSEXT_ERR_OK ;
 scalar_t__ SSL_select_next_proto (unsigned char**,unsigned char*,unsigned char*,size_t,unsigned char const*,unsigned int) ;
 int abort () ;
 unsigned char* alpn_selected ;
 int fprintf (int ,char*,char*) ;
 int memcpy (unsigned char*,unsigned char const*,unsigned char) ;
 unsigned char* next_protos_parse (size_t*,char*) ;
 int stderr ;

__attribute__((used)) static int cb_server_alpn(SSL *s, const unsigned char **out,
                          unsigned char *outlen, const unsigned char *in,
                          unsigned int inlen, void *arg)
{
    unsigned char *protos;
    size_t protos_len;
    char* alpn_str = arg;

    protos = next_protos_parse(&protos_len, alpn_str);
    if (protos == ((void*)0)) {
        fprintf(stderr, "failed to parser ALPN server protocol string: %s\n",
                alpn_str);
        abort();
    }

    if (SSL_select_next_proto
        ((unsigned char **)out, outlen, protos, protos_len, in,
         inlen) != OPENSSL_NPN_NEGOTIATED) {
        OPENSSL_free(protos);
        return SSL_TLSEXT_ERR_NOACK;
    }





    alpn_selected = OPENSSL_malloc(*outlen);
    memcpy(alpn_selected, *out, *outlen);
    *out = alpn_selected;

    OPENSSL_free(protos);
    return SSL_TLSEXT_ERR_OK;
}
