
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int process_can (int ) ;

void CAN1_TX_IRQHandler(void) { process_can(0); }
