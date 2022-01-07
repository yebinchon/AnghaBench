
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int DHCP_WAIT_TIME ;
 scalar_t__ dhcp_retry_count ;
 scalar_t__ dhcp_tick_1s ;
 int dhcp_tick_next ;

void reset_DHCP_timeout(void)
{
 dhcp_tick_1s = 0;
 dhcp_tick_next = DHCP_WAIT_TIME;
 dhcp_retry_count = 0;
}
