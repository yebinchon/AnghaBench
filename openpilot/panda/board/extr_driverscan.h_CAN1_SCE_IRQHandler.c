
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CAN1 ;
 int can_sce (int ) ;

void CAN1_SCE_IRQHandler(void) { can_sce(CAN1); }
