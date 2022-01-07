
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int OPENSSL_CTX ;
typedef int EVP_MAC ;


 int OSSL_OP_MAC ;
 int * evp_generic_fetch (int *,int ,char const*,char const*,int ,int ,int ) ;
 int evp_mac_free ;
 int evp_mac_from_dispatch ;
 int evp_mac_up_ref ;

EVP_MAC *EVP_MAC_fetch(OPENSSL_CTX *libctx, const char *algorithm,
                       const char *properties)
{
    return evp_generic_fetch(libctx, OSSL_OP_MAC, algorithm, properties,
                             evp_mac_from_dispatch, evp_mac_up_ref,
                             evp_mac_free);
}
