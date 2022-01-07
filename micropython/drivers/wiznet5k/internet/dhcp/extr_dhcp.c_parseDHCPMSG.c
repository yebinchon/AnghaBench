
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint16_t ;
typedef int int8_t ;
struct TYPE_2__ {scalar_t__* chaddr; int op; } ;


 scalar_t__* DHCP_CHADDR ;
 int DHCP_SERVER_PORT ;
 int * DHCP_SIP ;
 int DHCP_SOCKET ;
 int * DHCP_allocated_dns ;
 int * DHCP_allocated_gw ;
 int * DHCP_allocated_sn ;



 int dhcp_lease_time ;


 int getSn_RX_RSR (int ) ;
 TYPE_1__* pDHCPMSG ;

 int printf (char*,int,int,int,int,int,int) ;
 int recvfrom (int ,int*,int,int*,int*) ;



int8_t parseDHCPMSG(void)
{
 uint8_t svr_addr[6];
 uint16_t svr_port;
 uint16_t len;

 uint8_t * p;
 uint8_t * e;
 uint8_t type;
 uint8_t opt_len;

   if((len = getSn_RX_RSR(DHCP_SOCKET)) > 0)
   {
    len = recvfrom(DHCP_SOCKET, (uint8_t *)pDHCPMSG, len, svr_addr, &svr_port);



   }
   else return 0;
 if (svr_port == DHCP_SERVER_PORT) {

  if ( (pDHCPMSG->chaddr[0] != DHCP_CHADDR[0]) || (pDHCPMSG->chaddr[1] != DHCP_CHADDR[1]) ||
       (pDHCPMSG->chaddr[2] != DHCP_CHADDR[2]) || (pDHCPMSG->chaddr[3] != DHCP_CHADDR[3]) ||
       (pDHCPMSG->chaddr[4] != DHCP_CHADDR[4]) || (pDHCPMSG->chaddr[5] != DHCP_CHADDR[5]) )
         return 0;
      type = 0;
  p = (uint8_t *)(&pDHCPMSG->op);
  p = p + 240;
  e = p + (len - 240);

  while ( p < e ) {

   switch ( *p ) {

      case 131 :
         p = e;
       break;
            case 130 :
       p++;
       break;
      case 134 :
       p++;
       p++;
       type = *p++;
       break;
      case 128 :
       p++;
       p++;
       DHCP_allocated_sn[0] = *p++;
       DHCP_allocated_sn[1] = *p++;
       DHCP_allocated_sn[2] = *p++;
       DHCP_allocated_sn[3] = *p++;
       break;
      case 129 :
       p++;
       opt_len = *p++;
       DHCP_allocated_gw[0] = *p++;
       DHCP_allocated_gw[1] = *p++;
       DHCP_allocated_gw[2] = *p++;
       DHCP_allocated_gw[3] = *p++;
       p = p + (opt_len - 4);
       break;
      case 132 :
       p++;
       opt_len = *p++;
       DHCP_allocated_dns[0] = *p++;
       DHCP_allocated_dns[1] = *p++;
       DHCP_allocated_dns[2] = *p++;
       DHCP_allocated_dns[3] = *p++;
       p = p + (opt_len - 4);
       break;
      case 135 :
       p++;
       opt_len = *p++;
       dhcp_lease_time = *p++;
       dhcp_lease_time = (dhcp_lease_time << 8) + *p++;
       dhcp_lease_time = (dhcp_lease_time << 8) + *p++;
       dhcp_lease_time = (dhcp_lease_time << 8) + *p++;



       break;
      case 133 :
       p++;
       opt_len = *p++;
       DHCP_SIP[0] = *p++;
       DHCP_SIP[1] = *p++;
       DHCP_SIP[2] = *p++;
       DHCP_SIP[3] = *p++;
       break;
      default :
       p++;
       opt_len = *p++;
       p += opt_len;
       break;
   }
  }
 }
 return type;
}
