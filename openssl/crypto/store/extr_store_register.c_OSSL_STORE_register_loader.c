
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int OSSL_STORE_LOADER ;


 int ossl_store_init_once () ;
 int ossl_store_register_loader_int (int *) ;

int OSSL_STORE_register_loader(OSSL_STORE_LOADER *loader)
{
    if (!ossl_store_init_once())
        return 0;
    return ossl_store_register_loader_int(loader);
}
