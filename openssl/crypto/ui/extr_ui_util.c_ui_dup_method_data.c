
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pem_password_cb_data {int dummy; } ;
typedef int CRYPTO_EX_DATA ;


 void* OPENSSL_memdup (void*,int) ;

__attribute__((used)) static int ui_dup_method_data(CRYPTO_EX_DATA *to, const CRYPTO_EX_DATA *from,
                              void *from_d, int idx, long argl, void *argp)
{
    void **pptr = (void **)from_d;
    if (*pptr != ((void*)0))
        *pptr = OPENSSL_memdup(*pptr, sizeof(struct pem_password_cb_data));
    return 1;
}
