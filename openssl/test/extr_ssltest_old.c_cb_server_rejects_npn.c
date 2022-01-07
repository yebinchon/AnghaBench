
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int SSL ;


 int SSL_TLSEXT_ERR_NOACK ;

__attribute__((used)) static int cb_server_rejects_npn(SSL *s, const unsigned char **data,
                                 unsigned int *len, void *arg)
{
    return SSL_TLSEXT_ERR_NOACK;
}
