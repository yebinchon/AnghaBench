
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint16_t ;
struct TYPE_2__ {int* OPT; int flags; } ;


 void** DHCP_CHADDR ;
 int DHCP_DECLINE ;
 int DHCP_FLAGSUNICAST ;
 int DHCP_SERVER_PORT ;
 void** DHCP_SIP ;
 int DHCP_SOCKET ;
 void** DHCP_allocated_ip ;
 int OPT_SIZE ;
 int RIP_MSG_SIZE ;
 int dhcpClientIdentifier ;
 int dhcpMessageType ;
 int dhcpRequestedIPaddr ;
 int dhcpServerIdentifier ;
 int endOption ;
 int makeDHCPMSG () ;
 TYPE_1__* pDHCPMSG ;
 int printf (char*) ;
 int sendto (int ,int*,int ,int*,int ) ;

void send_DHCP_DECLINE(void)
{
 int i;
 uint8_t ip[4];
 uint16_t k = 0;

 makeDHCPMSG();

   k = 4;

 *((uint8_t*)(&pDHCPMSG->flags)) = ((DHCP_FLAGSUNICAST & 0xFF00)>> 8);
 *((uint8_t*)(&pDHCPMSG->flags)+1) = (DHCP_FLAGSUNICAST & 0x00FF);


 pDHCPMSG->OPT[k++] = dhcpMessageType;
 pDHCPMSG->OPT[k++] = 0x01;
 pDHCPMSG->OPT[k++] = DHCP_DECLINE;

 pDHCPMSG->OPT[k++] = dhcpClientIdentifier;
 pDHCPMSG->OPT[k++] = 0x07;
 pDHCPMSG->OPT[k++] = 0x01;
 pDHCPMSG->OPT[k++] = DHCP_CHADDR[0];
 pDHCPMSG->OPT[k++] = DHCP_CHADDR[1];
 pDHCPMSG->OPT[k++] = DHCP_CHADDR[2];
 pDHCPMSG->OPT[k++] = DHCP_CHADDR[3];
 pDHCPMSG->OPT[k++] = DHCP_CHADDR[4];
 pDHCPMSG->OPT[k++] = DHCP_CHADDR[5];

 pDHCPMSG->OPT[k++] = dhcpRequestedIPaddr;
 pDHCPMSG->OPT[k++] = 0x04;
 pDHCPMSG->OPT[k++] = DHCP_allocated_ip[0];
 pDHCPMSG->OPT[k++] = DHCP_allocated_ip[1];
 pDHCPMSG->OPT[k++] = DHCP_allocated_ip[2];
 pDHCPMSG->OPT[k++] = DHCP_allocated_ip[3];

 pDHCPMSG->OPT[k++] = dhcpServerIdentifier;
 pDHCPMSG->OPT[k++] = 0x04;
 pDHCPMSG->OPT[k++] = DHCP_SIP[0];
 pDHCPMSG->OPT[k++] = DHCP_SIP[1];
 pDHCPMSG->OPT[k++] = DHCP_SIP[2];
 pDHCPMSG->OPT[k++] = DHCP_SIP[3];

 pDHCPMSG->OPT[k++] = endOption;

 for (i = k; i < OPT_SIZE; i++) pDHCPMSG->OPT[i] = 0;


 ip[0] = 0xFF;
 ip[1] = 0xFF;
 ip[2] = 0xFF;
 ip[3] = 0xFF;





 sendto(DHCP_SOCKET, (uint8_t *)pDHCPMSG, RIP_MSG_SIZE, ip, DHCP_SERVER_PORT);
}
