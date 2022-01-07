
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ uint8_t ;
struct TYPE_2__ {int (* enable_can_transcievers ) (int) ;} ;


 scalar_t__ CAN_MAX ;
 int can_init (scalar_t__) ;
 TYPE_1__* current_board ;
 int stub1 (int) ;

void can_init_all(void) {
  for (uint8_t i=0U; i < CAN_MAX; i++) {
    can_init(i);
  }
  current_board->enable_can_transcievers(1);
}
