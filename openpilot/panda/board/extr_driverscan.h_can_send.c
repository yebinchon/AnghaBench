
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef unsigned int uint8_t ;
struct TYPE_6__ {int RDTR; } ;
typedef TYPE_1__ CAN_FIFOMailBox_TypeDef ;


 unsigned int BUS_MAX ;
 int CAN_NUM_FROM_BUS_NUM (unsigned int) ;
 scalar_t__ bitbang_gmlan (TYPE_1__*) ;
 unsigned int can_fwd_errs ;
 int* can_num_lookup ;
 scalar_t__ can_push (int ,TYPE_1__*) ;
 int * can_queues ;
 unsigned int gmlan_send_errs ;
 int process_can (int ) ;
 scalar_t__ safety_tx_hook (TYPE_1__*) ;

void can_send(CAN_FIFOMailBox_TypeDef *to_push, uint8_t bus_number) {
  if (safety_tx_hook(to_push) != 0) {
    if (bus_number < BUS_MAX) {


      to_push->RDTR &= 0xF;
      if ((bus_number == 3U) && (can_num_lookup[3] == 0xFFU)) {
        gmlan_send_errs += bitbang_gmlan(to_push) ? 0U : 1U;
      } else {
        can_fwd_errs += can_push(can_queues[bus_number], to_push) ? 0U : 1U;
        process_can(CAN_NUM_FROM_BUS_NUM(bus_number));
      }
    }
  }
}
