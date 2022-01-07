
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int ESR; int RF1R; int RF0R; int TSR; int MSR; } ;
typedef TYPE_1__ CAN_TypeDef ;


 TYPE_1__* CAN1 ;
 TYPE_1__* CAN2 ;
 TYPE_1__* CAN3 ;
 int ENTER_CRITICAL () ;
 int EXIT_CRITICAL () ;
 int can_err_cnt ;
 int llcan_clear_send (TYPE_1__*) ;
 int puth (int ) ;
 int puts (char*) ;

void can_sce(CAN_TypeDef *CAN) {
  ENTER_CRITICAL();
  can_err_cnt += 1;
  llcan_clear_send(CAN);
  EXIT_CRITICAL();
}
