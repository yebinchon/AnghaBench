
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int SSL ;
typedef int EVP_MD ;


 int const* EVP_sha256 () ;

const EVP_MD *ssl_handshake_md(SSL *s)
{
    return EVP_sha256();
}
