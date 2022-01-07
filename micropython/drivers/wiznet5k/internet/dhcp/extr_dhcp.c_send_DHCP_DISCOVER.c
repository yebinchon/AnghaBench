
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint8_t ;
typedef size_t uint16_t ;
struct TYPE_2__ {int* OPT; } ;


 void** DHCP_CHADDR ;
 int DHCP_DISCOVER ;
 int DHCP_SERVER_PORT ;
 int DHCP_SOCKET ;
 int* HOST_NAME ;
 size_t OPT_SIZE ;
 int RIP_MSG_SIZE ;
 int dhcpClientIdentifier ;
 int dhcpMessageType ;
 size_t dhcpParamRequest ;
 int dhcpT1value ;
 int dhcpT2value ;
 int dns ;
 int domainName ;
 int endOption ;
 int hostName ;
 int makeDHCPMSG () ;
 TYPE_1__* pDHCPMSG ;
 int printf (char*) ;
 int routersOnSubnet ;
 int sendto (int ,int*,int ,int*,int ) ;
 int subnetMask ;

void send_DHCP_DISCOVER(void)
{
 uint16_t i;
 uint8_t ip[4];
 uint16_t k = 0;

   makeDHCPMSG();

   k = 4;


 pDHCPMSG->OPT[k++] = dhcpMessageType;
 pDHCPMSG->OPT[k++] = 0x01;
 pDHCPMSG->OPT[k++] = DHCP_DISCOVER;


 pDHCPMSG->OPT[k++] = dhcpClientIdentifier;
 pDHCPMSG->OPT[k++] = 0x07;
 pDHCPMSG->OPT[k++] = 0x01;
 pDHCPMSG->OPT[k++] = DHCP_CHADDR[0];
 pDHCPMSG->OPT[k++] = DHCP_CHADDR[1];
 pDHCPMSG->OPT[k++] = DHCP_CHADDR[2];
 pDHCPMSG->OPT[k++] = DHCP_CHADDR[3];
 pDHCPMSG->OPT[k++] = DHCP_CHADDR[4];
 pDHCPMSG->OPT[k++] = DHCP_CHADDR[5];


 pDHCPMSG->OPT[k++] = hostName;
 pDHCPMSG->OPT[k++] = 0;
 for(i = 0 ; HOST_NAME[i] != 0; i++)
    pDHCPMSG->OPT[k++] = HOST_NAME[i];
 pDHCPMSG->OPT[k++] = DHCP_CHADDR[3];
 pDHCPMSG->OPT[k++] = DHCP_CHADDR[4];
 pDHCPMSG->OPT[k++] = DHCP_CHADDR[5];
 pDHCPMSG->OPT[k - (i+3+1)] = i+3;

 pDHCPMSG->OPT[k++] = dhcpParamRequest;
 pDHCPMSG->OPT[k++] = 0x06;
 pDHCPMSG->OPT[k++] = subnetMask;
 pDHCPMSG->OPT[k++] = routersOnSubnet;
 pDHCPMSG->OPT[k++] = dns;
 pDHCPMSG->OPT[k++] = domainName;
 pDHCPMSG->OPT[k++] = dhcpT1value;
 pDHCPMSG->OPT[k++] = dhcpT2value;
 pDHCPMSG->OPT[k++] = endOption;

 for (i = k; i < OPT_SIZE; i++) pDHCPMSG->OPT[i] = 0;


 ip[0] = 255;
 ip[1] = 255;
 ip[2] = 255;
 ip[3] = 255;





 sendto(DHCP_SOCKET, (uint8_t *)pDHCPMSG, RIP_MSG_SIZE, ip, DHCP_SERVER_PORT);
}
