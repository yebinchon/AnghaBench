
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int RIP_MSG ;


 int* DHCP_CHADDR ;
 int DHCP_SOCKET ;
 int DHCP_XID ;
 int STATE_DHCP_INIT ;
 int dhcp_state ;
 int getSHAR (int*) ;
 int * pDHCPMSG ;
 int reset_DHCP_timeout () ;
 int setGAR (int *) ;
 int setSHAR (int*) ;
 int setSIPR (int *) ;

void DHCP_init(uint8_t s, uint8_t * buf)
{
   uint8_t zeroip[4] = {0,0,0,0};
   getSHAR(DHCP_CHADDR);
   if((DHCP_CHADDR[0] | DHCP_CHADDR[1] | DHCP_CHADDR[2] | DHCP_CHADDR[3] | DHCP_CHADDR[4] | DHCP_CHADDR[5]) == 0x00)
   {

      DHCP_CHADDR[0] = 0x00;
      DHCP_CHADDR[1] = 0x08;
      DHCP_CHADDR[2] = 0xdc;
      DHCP_CHADDR[3] = 0x00;
      DHCP_CHADDR[4] = 0x00;
      DHCP_CHADDR[5] = 0x00;
      setSHAR(DHCP_CHADDR);
   }

 DHCP_SOCKET = s;
 pDHCPMSG = (RIP_MSG*)buf;
 DHCP_XID = 0x12345678;


 setSIPR(zeroip);
 setSIPR(zeroip);
 setGAR(zeroip);

 reset_DHCP_timeout();
 dhcp_state = STATE_DHCP_INIT;
}
