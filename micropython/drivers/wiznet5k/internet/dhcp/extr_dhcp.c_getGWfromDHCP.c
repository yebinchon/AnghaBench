
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;


 int * DHCP_allocated_gw ;

void getGWfromDHCP(uint8_t* ip)
{
 ip[0] =DHCP_allocated_gw[0];
 ip[1] =DHCP_allocated_gw[1];
 ip[2] =DHCP_allocated_gw[2];
 ip[3] =DHCP_allocated_gw[3];
}
