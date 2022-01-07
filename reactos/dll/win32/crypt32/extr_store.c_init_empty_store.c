
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CERT_STORE_READONLY_FLAG ;
 int CRYPT_InitStore (int *,int ,int ,int *) ;
 int EmptyStoreVtbl ;
 int StoreTypeEmpty ;
 int empty_store ;

void init_empty_store(void)
{
    CRYPT_InitStore(&empty_store, CERT_STORE_READONLY_FLAG, StoreTypeEmpty, &EmptyStoreVtbl);
}
