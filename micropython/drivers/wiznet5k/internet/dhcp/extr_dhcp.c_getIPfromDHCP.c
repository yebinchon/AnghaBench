
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;


 int * DHCP_allocated_ip ;

void getIPfromDHCP(uint8_t* ip)
{
 ip[0] = DHCP_allocated_ip[0];
 ip[1] = DHCP_allocated_ip[1];
 ip[2] = DHCP_allocated_ip[2];
 ip[3] = DHCP_allocated_ip[3];
}
