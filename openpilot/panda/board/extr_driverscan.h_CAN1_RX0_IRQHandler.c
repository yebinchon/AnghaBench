
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int can_rx (int ) ;

void CAN1_RX0_IRQHandler(void) { can_rx(0); }
