
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int EVP_MAC ;


 int evp_mac_up_ref (int *) ;

int EVP_MAC_up_ref(EVP_MAC *mac)
{
    return evp_mac_up_ref(mac);
}
