
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct blake2_mac_data_st {int key; } ;


 int OPENSSL_cleanse (int ,int) ;
 int OPENSSL_free (struct blake2_mac_data_st*) ;

__attribute__((used)) static void blake2_mac_free(void *vmacctx)
{
    struct blake2_mac_data_st *macctx = vmacctx;

    if (macctx != ((void*)0)) {
        OPENSSL_cleanse(macctx->key, sizeof(macctx->key));
        OPENSSL_free(macctx);
    }
}
