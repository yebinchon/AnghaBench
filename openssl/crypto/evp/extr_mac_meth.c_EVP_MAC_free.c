
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int EVP_MAC ;


 int evp_mac_free (int *) ;

void EVP_MAC_free(EVP_MAC *mac)
{
    evp_mac_free(mac);
}
