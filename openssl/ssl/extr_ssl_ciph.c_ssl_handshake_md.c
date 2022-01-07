
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int SSL ;
typedef int EVP_MD ;


 int ssl_get_algorithm2 (int *) ;
 int const* ssl_md (int ) ;

const EVP_MD *ssl_handshake_md(SSL *s)
{
    return ssl_md(ssl_get_algorithm2(s));
}
