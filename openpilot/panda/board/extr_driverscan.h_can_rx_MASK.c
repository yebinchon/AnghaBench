#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_7__ ;
typedef  struct TYPE_13__   TYPE_3__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
typedef  int uint8_t ;
struct TYPE_14__ {int /*<<< orphan*/  (* set_led ) (int /*<<< orphan*/ ,int) ;} ;
struct TYPE_13__ {int RIR; int RDTR; int /*<<< orphan*/  RDHR; int /*<<< orphan*/  RDLR; } ;
struct TYPE_12__ {int RF0R; TYPE_1__* sFIFOMailBox; } ;
struct TYPE_11__ {int RIR; int RDTR; int /*<<< orphan*/  RDHR; int /*<<< orphan*/  RDLR; } ;
typedef  TYPE_2__ CAN_TypeDef ;
typedef  TYPE_3__ CAN_FIFOMailBox_TypeDef ;

/* Variables and functions */
 int FUNC0 (int) ; 
 TYPE_2__* FUNC1 (int) ; 
 int CAN_RF0R_FMP0 ; 
 int CAN_RF0R_RFOM0 ; 
 int /*<<< orphan*/  LED_BLUE ; 
 int* can_forwarding ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,TYPE_3__*) ; 
 int can_rx_cnt ; 
 int /*<<< orphan*/  can_rx_q ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*,int) ; 
 unsigned int can_send_errs ; 
 TYPE_7__* current_board ; 
 int /*<<< orphan*/  FUNC4 (TYPE_3__*) ; 
 int pending_can_live ; 
 int FUNC5 (int,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int) ; 

void FUNC8(uint8_t can_number) {
  CAN_TypeDef *CAN = FUNC1(can_number);
  uint8_t bus_number = FUNC0(can_number);
  while ((CAN->RF0R & CAN_RF0R_FMP0) != 0) {
    can_rx_cnt += 1;

    // can is live
    pending_can_live = 1;

    // add to my fifo
    CAN_FIFOMailBox_TypeDef to_push;
    to_push.RIR = CAN->sFIFOMailBox[0].RIR;
    to_push.RDTR = CAN->sFIFOMailBox[0].RDTR;
    to_push.RDLR = CAN->sFIFOMailBox[0].RDLR;
    to_push.RDHR = CAN->sFIFOMailBox[0].RDHR;

    // modify RDTR for our API
    to_push.RDTR = (to_push.RDTR & 0xFFFF000F) | (bus_number << 4);

    // forwarding (panda only)
    int bus_fwd_num = (can_forwarding[bus_number] != -1) ? can_forwarding[bus_number] : FUNC5(bus_number, &to_push);
    if (bus_fwd_num != -1) {
      CAN_FIFOMailBox_TypeDef to_send;
      to_send.RIR = to_push.RIR | 1; // TXRQ
      to_send.RDTR = to_push.RDTR;
      to_send.RDLR = to_push.RDLR;
      to_send.RDHR = to_push.RDHR;
      FUNC3(&to_send, bus_fwd_num);
    }

    FUNC6(&to_push);
    FUNC4(&to_push);

    current_board->set_led(LED_BLUE, true);
    can_send_errs += FUNC2(&can_rx_q, &to_push) ? 0U : 1U;

    // next
    CAN->RF0R |= CAN_RF0R_RFOM0;
  }
}