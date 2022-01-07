
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {void* (* new_func ) (int ) ;} ;
typedef TYPE_1__ OPENSSL_CTX_METHOD ;
typedef int CRYPTO_EX_DATA ;


 int CRYPTO_set_ex_data (int *,int,void*) ;
 int crypto_ex_data_get_openssl_ctx (int *) ;
 void* stub1 (int ) ;

__attribute__((used)) static void openssl_ctx_generic_new(void *parent_ign, void *ptr_ign,
                                    CRYPTO_EX_DATA *ad, int index,
                                    long argl_ign, void *argp)
{
    const OPENSSL_CTX_METHOD *meth = argp;
    void *ptr = meth->new_func(crypto_ex_data_get_openssl_ctx(ad));

    if (ptr != ((void*)0))
        CRYPTO_set_ex_data(ad, index, ptr);
}
