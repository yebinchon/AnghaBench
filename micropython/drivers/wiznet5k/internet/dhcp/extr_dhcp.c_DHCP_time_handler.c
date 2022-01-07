
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int dhcp_tick_1s ;

void DHCP_time_handler(void)
{
 dhcp_tick_1s++;
}
