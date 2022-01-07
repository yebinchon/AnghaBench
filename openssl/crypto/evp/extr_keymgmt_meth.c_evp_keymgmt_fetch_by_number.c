
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int OPENSSL_CTX ;
typedef int EVP_KEYMGMT ;


 scalar_t__ EVP_KEYMGMT_free ;
 scalar_t__ EVP_KEYMGMT_up_ref ;
 int OSSL_OP_KEYMGMT ;
 int * evp_generic_fetch_by_number (int *,int ,int,char const*,int ,int (*) (void*),void (*) (void*)) ;
 int keymgmt_from_dispatch ;

EVP_KEYMGMT *evp_keymgmt_fetch_by_number(OPENSSL_CTX *ctx, int name_id,
                                         const char *properties)
{
    return evp_generic_fetch_by_number(ctx,
                                       OSSL_OP_KEYMGMT, name_id, properties,
                                       keymgmt_from_dispatch,
                                       (int (*)(void *))EVP_KEYMGMT_up_ref,
                                       (void (*)(void *))EVP_KEYMGMT_free);
}
