
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int UINT8 ;


 int MAC_ADDR_LEN ;
 int NVMEM_MAC_FILEID ;
 int nvmem_read (int ,int ,int ,int *) ;

UINT8 nvmem_get_mac_address(UINT8 *mac)
{
 return nvmem_read(NVMEM_MAC_FILEID, MAC_ADDR_LEN, 0, mac);
}
