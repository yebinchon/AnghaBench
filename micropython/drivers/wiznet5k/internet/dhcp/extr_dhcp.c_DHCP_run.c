
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_2__ {int * yiaddr; } ;


 int DHCP_ACK ;
 int DHCP_CLIENT_PORT ;
 int DHCP_IP_CHANGED ;
 int DHCP_IP_LEASED ;
 int DHCP_NAK ;
 int DHCP_OFFER ;
 int DHCP_RUNNING ;
 int DHCP_SOCKET ;
 int DHCP_STOPPED ;
 int DHCP_XID ;
 int * DHCP_allocated_ip ;
 int INFINITE_LEASETIME ;
 int * OLD_allocated_ip ;
 scalar_t__ SOCK_UDP ;





 int STATE_DHCP_STOP ;
 int Sn_MR_UDP ;
 int check_DHCP_leasedIP () ;
 int check_DHCP_timeout () ;
 int dhcp_ip_assign () ;
 int dhcp_ip_conflict () ;
 int dhcp_ip_update () ;
 int dhcp_lease_time ;
 int dhcp_retry_count ;
 int dhcp_state ;
 int dhcp_tick_1s ;
 scalar_t__ getSn_SR (int ) ;
 TYPE_1__* pDHCPMSG ;
 int parseDHCPMSG () ;
 int printf (char*) ;
 int reset_DHCP_timeout () ;
 int send_DHCP_DISCOVER () ;
 int send_DHCP_REQUEST () ;
 int socket (int ,int ,int ,int) ;

uint8_t DHCP_run(void)
{
 uint8_t type;
 uint8_t ret;

 if(dhcp_state == STATE_DHCP_STOP) return DHCP_STOPPED;

 if(getSn_SR(DHCP_SOCKET) != SOCK_UDP)
    socket(DHCP_SOCKET, Sn_MR_UDP, DHCP_CLIENT_PORT, 0x00);

 ret = DHCP_RUNNING;
 type = parseDHCPMSG();

 switch ( dhcp_state ) {
    case 131 :
         DHCP_allocated_ip[0] = 0;
         DHCP_allocated_ip[1] = 0;
         DHCP_allocated_ip[2] = 0;
         DHCP_allocated_ip[3] = 0;
     send_DHCP_DISCOVER();
     dhcp_state = 132;
     break;
  case 132 :
   if (type == DHCP_OFFER){



            DHCP_allocated_ip[0] = pDHCPMSG->yiaddr[0];
            DHCP_allocated_ip[1] = pDHCPMSG->yiaddr[1];
            DHCP_allocated_ip[2] = pDHCPMSG->yiaddr[2];
            DHCP_allocated_ip[3] = pDHCPMSG->yiaddr[3];

    send_DHCP_REQUEST();
    dhcp_state = 129;
   } else ret = check_DHCP_timeout();
         break;

  case 129 :
   if (type == DHCP_ACK) {




    if (check_DHCP_leasedIP()) {

     dhcp_ip_assign();
     reset_DHCP_timeout();

     dhcp_state = 130;
    } else {

     reset_DHCP_timeout();
     dhcp_ip_conflict();
        dhcp_state = 131;
    }
   } else if (type == DHCP_NAK) {





    reset_DHCP_timeout();

    dhcp_state = 132;
   } else ret = check_DHCP_timeout();
  break;

  case 130 :
     ret = DHCP_IP_LEASED;
   if ((dhcp_lease_time != INFINITE_LEASETIME) && ((dhcp_lease_time/2) < dhcp_tick_1s)) {





    type = 0;
    OLD_allocated_ip[0] = DHCP_allocated_ip[0];
    OLD_allocated_ip[1] = DHCP_allocated_ip[1];
    OLD_allocated_ip[2] = DHCP_allocated_ip[2];
    OLD_allocated_ip[3] = DHCP_allocated_ip[3];

    DHCP_XID++;

    send_DHCP_REQUEST();

    reset_DHCP_timeout();

    dhcp_state = 128;
   }
  break;

  case 128 :
     ret = DHCP_IP_LEASED;
   if (type == DHCP_ACK) {
    dhcp_retry_count = 0;
    if (OLD_allocated_ip[0] != DHCP_allocated_ip[0] ||
        OLD_allocated_ip[1] != DHCP_allocated_ip[1] ||
        OLD_allocated_ip[2] != DHCP_allocated_ip[2] ||
        OLD_allocated_ip[3] != DHCP_allocated_ip[3])
    {
     ret = DHCP_IP_CHANGED;
     dhcp_ip_update();




    }



    reset_DHCP_timeout();
    dhcp_state = 130;
   } else if (type == DHCP_NAK) {





    reset_DHCP_timeout();

    dhcp_state = 132;
   } else ret = check_DHCP_timeout();
     break;
  default :
     break;
 }

 return ret;
}
