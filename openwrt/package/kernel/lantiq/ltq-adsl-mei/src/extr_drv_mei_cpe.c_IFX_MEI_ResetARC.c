
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {scalar_t__ modem_ready; } ;
typedef int DSL_DEV_MeiError_t ;
typedef int DSL_DEV_Device_t ;


 scalar_t__ BSP_PPE32_SRST ;
 int DSL_DEV_MEI_ERR_SUCCESS ;
 TYPE_1__* DSL_DEV_PRIVATE (int *) ;
 int IFX_MEI_EnableCLK (int *) ;
 int IFX_MEI_HaltArc (int *) ;
 int IFX_MEI_IRQDisable (int *) ;
 int IFX_MEI_LongWordRead (int,int*) ;
 int IFX_MEI_LongWordWrite (int,int) ;
 int IFX_MEI_LongWordWriteOffset (int *,int,int ) ;
 scalar_t__ LTQ_RCU_RST ;
 int LTQ_RCU_RST_REQ_AFE ;
 int LTQ_RCU_RST_REQ_DFE ;
 int MEI_SOFT_RESET ;
 scalar_t__ ME_RST_CTRL ;

__attribute__((used)) static DSL_DEV_MeiError_t
IFX_MEI_ResetARC (DSL_DEV_Device_t * pDev)
{
 u32 arc_debug_data = 0;

 IFX_MEI_HaltArc (pDev);

 IFX_MEI_LongWordRead ((u32) LTQ_RCU_RST, &arc_debug_data);
 IFX_MEI_LongWordWrite ((u32) LTQ_RCU_RST,
  arc_debug_data | LTQ_RCU_RST_REQ_DFE | LTQ_RCU_RST_REQ_AFE);


 IFX_MEI_LongWordWriteOffset (pDev, (u32) ME_RST_CTRL, MEI_SOFT_RESET);
 IFX_MEI_LongWordWriteOffset (pDev, (u32) ME_RST_CTRL, 0);

 IFX_MEI_IRQDisable (pDev);

 IFX_MEI_EnableCLK (pDev);







 DSL_DEV_PRIVATE(pDev)->modem_ready = 0;

 return DSL_DEV_MEI_ERR_SUCCESS;
}
