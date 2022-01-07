
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int int8_t ;
typedef scalar_t__ int32_t ;


 int DHCP_SOCKET ;
 int DHCP_allocated_ip ;
 scalar_t__ SOCKERR_TIMEOUT ;
 scalar_t__ dhcp_tick_1s ;
 int getRCR () ;
 int printf (char*) ;
 int send_DHCP_DECLINE () ;
 scalar_t__ sendto (int ,int*,int,int ,int) ;
 int setRCR (int) ;

int8_t check_DHCP_leasedIP(void)
{
 uint8_t tmp;
 int32_t ret;


 tmp = getRCR();
 setRCR(0x03);



 ret = sendto(DHCP_SOCKET, (uint8_t *)"CHECK_IP_CONFLICT", 17, DHCP_allocated_ip, 5000);


 setRCR(tmp);

 if(ret == SOCKERR_TIMEOUT) {






  return 1;
 } else {

  send_DHCP_DECLINE();

  ret = dhcp_tick_1s;
  while((dhcp_tick_1s - ret) < 2) ;

  return 0;
 }
}
