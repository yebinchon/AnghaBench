
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_9__ {int RDTR; int RIR; int RDHR; int RDLR; } ;
struct TYPE_8__ {int TSR; TYPE_1__* sTxMailBox; } ;
struct TYPE_7__ {int TDTR; int TIR; int TDHR; int TDLR; } ;
typedef TYPE_2__ CAN_TypeDef ;
typedef TYPE_3__ CAN_FIFOMailBox_TypeDef ;


 int BUS_NUM_FROM_CAN_NUM (int) ;
 TYPE_2__* CANIF_FROM_CAN_NUM (int) ;
 int CAN_BUS_RET_FLAG ;
 int CAN_TSR_ALST0 ;
 int CAN_TSR_RQCP0 ;
 int CAN_TSR_TERR0 ;
 int CAN_TSR_TME0 ;
 int CAN_TSR_TXOK0 ;
 int ENTER_CRITICAL () ;
 int EXIT_CRITICAL () ;
 scalar_t__ can_pop (int ,TYPE_3__*) ;
 scalar_t__ can_push (int *,TYPE_3__*) ;
 int * can_queues ;
 int can_rx_q ;
 unsigned int can_send_errs ;
 int can_tx_cnt ;
 int can_txd_cnt ;
 int puts (char*) ;

void process_can(uint8_t can_number) {
  if (can_number != 0xffU) {

    ENTER_CRITICAL();

    CAN_TypeDef *CAN = CANIF_FROM_CAN_NUM(can_number);
    uint8_t bus_number = BUS_NUM_FROM_CAN_NUM(can_number);


    CAN_FIFOMailBox_TypeDef to_send;
    if ((CAN->TSR & CAN_TSR_TME0) == CAN_TSR_TME0) {

      if ((CAN->TSR & CAN_TSR_RQCP0) == CAN_TSR_RQCP0) {
        can_txd_cnt += 1;

        if ((CAN->TSR & CAN_TSR_TXOK0) == CAN_TSR_TXOK0) {
          CAN_FIFOMailBox_TypeDef to_push;
          to_push.RIR = CAN->sTxMailBox[0].TIR;
          to_push.RDTR = (CAN->sTxMailBox[0].TDTR & 0xFFFF000FU) | ((CAN_BUS_RET_FLAG | bus_number) << 4);
          to_push.RDLR = CAN->sTxMailBox[0].TDLR;
          to_push.RDHR = CAN->sTxMailBox[0].TDHR;
          can_send_errs += can_push(&can_rx_q, &to_push) ? 0U : 1U;
        }

        if ((CAN->TSR & CAN_TSR_TERR0) == CAN_TSR_TERR0) {



        }

        if ((CAN->TSR & CAN_TSR_ALST0) == CAN_TSR_ALST0) {



        }



        CAN->TSR |= CAN_TSR_RQCP0;
      }

      if (can_pop(can_queues[bus_number], &to_send)) {
        can_tx_cnt += 1;

        CAN->sTxMailBox[0].TDLR = to_send.RDLR;
        CAN->sTxMailBox[0].TDHR = to_send.RDHR;
        CAN->sTxMailBox[0].TDTR = to_send.RDTR;
        CAN->sTxMailBox[0].TIR = to_send.RIR;
      }
    }

    EXIT_CRITICAL();
  }
}
