
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int SSL ;
typedef int EVP_MD ;


 size_t EVP_MD_size (int const*) ;
 int * ssl_handshake_md (int *) ;
 int tls13_generate_secret (int *,int const*,unsigned char*,int *,int ,unsigned char*) ;

int tls13_generate_master_secret(SSL *s, unsigned char *out,
                                 unsigned char *prev, size_t prevlen,
                                 size_t *secret_size)
{
    const EVP_MD *md = ssl_handshake_md(s);

    *secret_size = EVP_MD_size(md);

    return tls13_generate_secret(s, md, prev, ((void*)0), 0, out);
}
