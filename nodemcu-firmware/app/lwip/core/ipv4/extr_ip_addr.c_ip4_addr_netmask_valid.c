
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8_t ;
typedef int u32_t ;


 int lwip_htonl (int) ;

u8_t
ip4_addr_netmask_valid(u32_t netmask)
{
  u32_t mask;
  u32_t nm_hostorder = lwip_htonl(netmask);


  for (mask = 1U << 31 ; mask != 0; mask >>= 1) {
    if ((nm_hostorder & mask) == 0) {
      break;
    }
  }

  for (; mask != 0; mask >>= 1) {
    if ((nm_hostorder & mask) != 0) {

      return 0;
    }
  }

  return 1;
}
