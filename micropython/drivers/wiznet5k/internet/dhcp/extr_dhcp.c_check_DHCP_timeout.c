
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;


 int DHCP_FAILED ;
 int DHCP_RUNNING ;
 scalar_t__ DHCP_WAIT_TIME ;
 scalar_t__ MAX_DHCP_RETRY ;

 int STATE_DHCP_INIT ;


 scalar_t__ dhcp_retry_count ;
 int dhcp_state ;
 scalar_t__ dhcp_tick_1s ;
 scalar_t__ dhcp_tick_next ;
 int reset_DHCP_timeout () ;
 int send_DHCP_DISCOVER () ;
 int send_DHCP_REQUEST () ;

uint8_t check_DHCP_timeout(void)
{
 uint8_t ret = DHCP_RUNNING;

 if (dhcp_retry_count < MAX_DHCP_RETRY) {
  if (dhcp_tick_next < dhcp_tick_1s) {

   switch ( dhcp_state ) {
    case 130 :

     send_DHCP_DISCOVER();
    break;

    case 129 :


     send_DHCP_REQUEST();
    break;

    case 128 :


     send_DHCP_REQUEST();
    break;

    default :
    break;
   }

   dhcp_tick_1s = 0;
   dhcp_tick_next = dhcp_tick_1s + DHCP_WAIT_TIME;
   dhcp_retry_count++;
  }
 } else {

  switch(dhcp_state) {
   case 130:
    dhcp_state = STATE_DHCP_INIT;
    ret = DHCP_FAILED;
    break;
   case 129:
   case 128:
    send_DHCP_DISCOVER();
    dhcp_state = 130;
    break;
   default :
    break;
  }
  reset_DHCP_timeout();
 }
 return ret;
}
