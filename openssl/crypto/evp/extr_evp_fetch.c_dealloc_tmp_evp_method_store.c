
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ossl_method_store_free (void*) ;

__attribute__((used)) static void dealloc_tmp_evp_method_store(void *store)
{
    if (store != ((void*)0))
        ossl_method_store_free(store);
}
