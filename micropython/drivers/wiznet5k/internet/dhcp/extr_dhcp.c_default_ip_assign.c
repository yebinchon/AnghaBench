
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int DHCP_allocated_gw ;
 int DHCP_allocated_ip ;
 int DHCP_allocated_sn ;
 int setGAR (int ) ;
 int setSIPR (int ) ;
 int setSUBR (int ) ;

void default_ip_assign(void)
{
   setSIPR(DHCP_allocated_ip);
   setSUBR(DHCP_allocated_sn);
   setGAR (DHCP_allocated_gw);
}
