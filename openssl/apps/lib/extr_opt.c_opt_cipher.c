
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int EVP_CIPHER ;


 int * EVP_get_cipherbyname (char const*) ;
 int opt_printf_stderr (char*,int ,char const*) ;
 int prog ;

int opt_cipher(const char *name, const EVP_CIPHER **cipherp)
{
    *cipherp = EVP_get_cipherbyname(name);
    if (*cipherp != ((void*)0))
        return 1;
    opt_printf_stderr("%s: Unrecognized flag %s\n", prog, name);
    return 0;
}
