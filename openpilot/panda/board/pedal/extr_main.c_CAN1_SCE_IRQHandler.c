
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CAN ;
 int FAULT_SCE ;
 int llcan_clear_send (int ) ;
 int state ;

void CAN1_SCE_IRQHandler(void) {
  state = FAULT_SCE;
  llcan_clear_send(CAN);
}
