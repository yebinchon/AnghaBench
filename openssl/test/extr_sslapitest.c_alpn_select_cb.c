
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int SSL ;


 int SSL_TLSEXT_ERR_NOACK ;
 int SSL_TLSEXT_ERR_OK ;
 scalar_t__ memcmp (unsigned char const*,int ,unsigned int) ;
 int servalpn ;
 unsigned int strlen (int ) ;

__attribute__((used)) static int alpn_select_cb(SSL *ssl, const unsigned char **out,
                          unsigned char *outlen, const unsigned char *in,
                          unsigned int inlen, void *arg)
{
    unsigned int protlen = 0;
    const unsigned char *prot;

    for (prot = in; prot < in + inlen; prot += protlen) {
        protlen = *prot++;
        if (in + inlen < prot + protlen)
            return SSL_TLSEXT_ERR_NOACK;

        if (protlen == strlen(servalpn)
                && memcmp(prot, servalpn, protlen) == 0) {
            *out = prot;
            *outlen = protlen;
            return SSL_TLSEXT_ERR_OK;
        }
    }

    return SSL_TLSEXT_ERR_NOACK;
}
