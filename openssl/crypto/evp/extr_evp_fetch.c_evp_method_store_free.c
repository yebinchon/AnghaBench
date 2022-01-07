
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ossl_method_store_free (void*) ;

__attribute__((used)) static void evp_method_store_free(void *vstore)
{
    ossl_method_store_free(vstore);
}
