
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int SSL_CIPHER ;


 char const* SSL_CIPHER_get_name (int const*) ;
 int * ssl3_get_cipher_by_std_name (char const*) ;

const char *OPENSSL_cipher_name(const char *stdname)
{
    const SSL_CIPHER *c;

    if (stdname == ((void*)0))
        return "(NONE)";
    c = ssl3_get_cipher_by_std_name(stdname);
    return SSL_CIPHER_get_name(c);
}
