
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_8__ {int TSR; TYPE_1__* sTxMailBox; } ;
struct TYPE_7__ {int CNT; scalar_t__ SR; } ;
struct TYPE_6__ {int (* set_led ) (int ,int) ;} ;
struct TYPE_5__ {int TDLR; int TDHR; int TDTR; int TIR; } ;


 TYPE_4__* CAN ;
 int CAN_GAS_OUTPUT ;
 scalar_t__ CAN_GAS_SIZE ;
 int CAN_TSR_TME0 ;
 int COUNTER_CYCLE ;
 int FAULT_SEND ;
 int FAULT_TIMEOUT ;
 int LED_GREEN ;
 scalar_t__ MAX_TIMEOUT ;
 TYPE_3__* TIM3 ;
 TYPE_2__* current_board ;
 int led_value ;
 int pdl0 ;
 int pdl1 ;
 int pedal_checksum (int*,scalar_t__) ;
 int pkt_idx ;
 int puth (int) ;
 int puts (char*) ;
 int state ;
 int stub1 (int ,int) ;
 scalar_t__ timeout ;

void TIM3_IRQHandler(void) {
  if ((CAN->TSR & CAN_TSR_TME0) == CAN_TSR_TME0) {
    uint8_t dat[8];
    dat[0] = (pdl0 >> 8) & 0xFFU;
    dat[1] = (pdl0 >> 0) & 0xFFU;
    dat[2] = (pdl1 >> 8) & 0xFFU;
    dat[3] = (pdl1 >> 0) & 0xFFU;
    dat[4] = ((state & 0xFU) << 4) | pkt_idx;
    dat[5] = pedal_checksum(dat, CAN_GAS_SIZE - 1);
    CAN->sTxMailBox[0].TDLR = dat[0] | (dat[1] << 8) | (dat[2] << 16) | (dat[3] << 24);
    CAN->sTxMailBox[0].TDHR = dat[4] | (dat[5] << 8);
    CAN->sTxMailBox[0].TDTR = 6;
    CAN->sTxMailBox[0].TIR = (CAN_GAS_OUTPUT << 21) | 1U;
    ++pkt_idx;
    pkt_idx &= COUNTER_CYCLE;
  } else {

    state = FAULT_SEND;



  }


  current_board->set_led(LED_GREEN, led_value);
  led_value = !led_value;

  TIM3->SR = 0;


  if (timeout == MAX_TIMEOUT) {
    state = FAULT_TIMEOUT;
  } else {
    timeout += 1U;
  }
}
