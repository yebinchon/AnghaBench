
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ossl_store_destroy_loaders_int () ;

void ossl_store_cleanup_int(void)
{
    ossl_store_destroy_loaders_int();
}
