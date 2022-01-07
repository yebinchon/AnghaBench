
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {unsigned int FA1R; int IER; int FMR; TYPE_1__* sFilterRegister; } ;
struct TYPE_7__ {scalar_t__ FR2; scalar_t__ FR1; } ;
typedef TYPE_2__ CAN_TypeDef ;


 TYPE_2__* CAN1 ;
 int CAN1_RX0_IRQn ;
 int CAN1_SCE_IRQn ;
 int CAN1_TX_IRQn ;
 TYPE_2__* CAN2 ;
 int CAN2_RX0_IRQn ;
 int CAN2_SCE_IRQn ;
 int CAN2_TX_IRQn ;
 TYPE_2__* CAN3 ;
 int CAN3_RX0_IRQn ;
 int CAN3_SCE_IRQn ;
 int CAN3_TX_IRQn ;
 int CAN_FMR_FINIT ;
 int CAN_IER_FMPIE0 ;
 int CAN_IER_TMEIE ;
 int CAN_IER_WKUIE ;
 int NVIC_EnableIRQ (int ) ;
 int puts (char*) ;

void llcan_init(CAN_TypeDef *CAN_obj) {

  CAN_obj->FMR |= CAN_FMR_FINIT;


  CAN_obj->sFilterRegister[0].FR1 = 0;
  CAN_obj->sFilterRegister[0].FR2 = 0;
  CAN_obj->sFilterRegister[14].FR1 = 0;
  CAN_obj->sFilterRegister[14].FR2 = 0;
  CAN_obj->FA1R |= 1U | (1U << 14);

  CAN_obj->FMR &= ~(CAN_FMR_FINIT);


  CAN_obj->IER |= CAN_IER_TMEIE | CAN_IER_FMPIE0 | CAN_IER_WKUIE;

  if (CAN_obj == CAN1) {
    NVIC_EnableIRQ(CAN1_TX_IRQn);
    NVIC_EnableIRQ(CAN1_RX0_IRQn);
    NVIC_EnableIRQ(CAN1_SCE_IRQn);
  } else if (CAN_obj == CAN2) {
    NVIC_EnableIRQ(CAN2_TX_IRQn);
    NVIC_EnableIRQ(CAN2_RX0_IRQn);
    NVIC_EnableIRQ(CAN2_SCE_IRQn);






  } else {
    puts("Invalid CAN: initialization failed\n");
  }
}
