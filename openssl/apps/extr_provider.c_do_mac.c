
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int EVP_MAC ;


 int EVP_MAC_gettable_ctx_params (int *) ;
 int EVP_MAC_gettable_params (int *) ;
 int EVP_MAC_settable_ctx_params (int *) ;
 int collect_mac_names ;
 int do_method (int *,int ,int ,int ,int ,void*) ;

__attribute__((used)) static void do_mac(EVP_MAC *mac, void *meta)
{
    do_method(mac, collect_mac_names,
              EVP_MAC_gettable_params(mac),
              EVP_MAC_gettable_ctx_params(mac),
              EVP_MAC_settable_ctx_params(mac),
              meta);
}
