
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int DHCP_SOCKET ;
 int STATE_DHCP_STOP ;
 int close (int ) ;
 int dhcp_state ;

void DHCP_stop(void)
{
   close(DHCP_SOCKET);
   dhcp_state = STATE_DHCP_STOP;
}
