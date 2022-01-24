#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int uint8_t ;
struct TYPE_9__ {int RDTR; int /*<<< orphan*/  RIR; int /*<<< orphan*/  RDHR; int /*<<< orphan*/  RDLR; } ;
struct TYPE_8__ {int TSR; TYPE_1__* sTxMailBox; } ;
struct TYPE_7__ {int TDTR; int /*<<< orphan*/  TIR; int /*<<< orphan*/  TDHR; int /*<<< orphan*/  TDLR; } ;
typedef  TYPE_2__ CAN_TypeDef ;
typedef  TYPE_3__ CAN_FIFOMailBox_TypeDef ;

/* Variables and functions */
 int FUNC0 (int) ; 
 TYPE_2__* FUNC1 (int) ; 
 int CAN_BUS_RET_FLAG ; 
 int CAN_TSR_ALST0 ; 
 int CAN_TSR_RQCP0 ; 
 int CAN_TSR_TERR0 ; 
 int CAN_TSR_TME0 ; 
 int CAN_TSR_TXOK0 ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,TYPE_3__*) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *,TYPE_3__*) ; 
 int /*<<< orphan*/ * can_queues ; 
 int /*<<< orphan*/  can_rx_q ; 
 unsigned int can_send_errs ; 
 int can_tx_cnt ; 
 int can_txd_cnt ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 

void FUNC7(uint8_t can_number) {
  if (can_number != 0xffU) {

    FUNC2();

    CAN_TypeDef *CAN = FUNC1(can_number);
    uint8_t bus_number = FUNC0(can_number);

    // check for empty mailbox
    CAN_FIFOMailBox_TypeDef to_send;
    if ((CAN->TSR & CAN_TSR_TME0) == CAN_TSR_TME0) {
      // add successfully transmitted message to my fifo
      if ((CAN->TSR & CAN_TSR_RQCP0) == CAN_TSR_RQCP0) {
        can_txd_cnt += 1;

        if ((CAN->TSR & CAN_TSR_TXOK0) == CAN_TSR_TXOK0) {
          CAN_FIFOMailBox_TypeDef to_push;
          to_push.RIR = CAN->sTxMailBox[0].TIR;
          to_push.RDTR = (CAN->sTxMailBox[0].TDTR & 0xFFFF000FU) | ((CAN_BUS_RET_FLAG | bus_number) << 4);
          to_push.RDLR = CAN->sTxMailBox[0].TDLR;
          to_push.RDHR = CAN->sTxMailBox[0].TDHR;
          can_send_errs += FUNC5(&can_rx_q, &to_push) ? 0U : 1U;
        }

        if ((CAN->TSR & CAN_TSR_TERR0) == CAN_TSR_TERR0) {
          #ifdef DEBUG
            puts("CAN TX ERROR!\n");
          #endif
        }

        if ((CAN->TSR & CAN_TSR_ALST0) == CAN_TSR_ALST0) {
          #ifdef DEBUG
            puts("CAN TX ARBITRATION LOST!\n");
          #endif
        }

        // clear interrupt
        // careful, this can also be cleared by requesting a transmission
        CAN->TSR |= CAN_TSR_RQCP0;
      }

      if (FUNC4(can_queues[bus_number], &to_send)) {
        can_tx_cnt += 1;
        // only send if we have received a packet
        CAN->sTxMailBox[0].TDLR = to_send.RDLR;
        CAN->sTxMailBox[0].TDHR = to_send.RDHR;
        CAN->sTxMailBox[0].TDTR = to_send.RDTR;
        CAN->sTxMailBox[0].TIR = to_send.RIR;
      }
    }

    FUNC3();
  }
}