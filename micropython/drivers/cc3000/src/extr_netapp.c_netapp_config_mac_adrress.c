
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int UINT8 ;
typedef int INT32 ;


 int nvmem_set_mac_address (int *) ;

INT32 netapp_config_mac_adrress(UINT8 * mac)
{
 return nvmem_set_mac_address(mac);
}
