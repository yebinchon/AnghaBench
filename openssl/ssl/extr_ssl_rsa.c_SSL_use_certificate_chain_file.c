
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int SSL ;


 int use_certificate_chain_file (int *,int *,char const*) ;

int SSL_use_certificate_chain_file(SSL *ssl, const char *file)
{
    return use_certificate_chain_file(((void*)0), ssl, file);
}
