
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int DSL_DEV_MeiError_t ;
typedef int DSL_DEV_Device_t ;


 int ACL_CLK_MODE_ENABLE ;
 int CRI_CCR0 ;
 int DSL_DEV_MEI_ERR_SUCCESS ;
 int IFX_MEI_ControlModeSet (int *,int ) ;
 int JTAG_MASTER_MODE ;
 int MEI_MASTER_MODE ;
 int ME_DBG_DECODE_DMP1_MASK ;
 int _IFX_MEI_DBGLongWordRead (int *,int ,int ,int *) ;
 int _IFX_MEI_DBGLongWordWrite (int *,int ,int ,int ) ;

__attribute__((used)) static DSL_DEV_MeiError_t
IFX_MEI_EnableCLK (DSL_DEV_Device_t * pDev)
{
 u32 arc_debug_data = 0;
 IFX_MEI_ControlModeSet (pDev, MEI_MASTER_MODE);

 _IFX_MEI_DBGLongWordRead (pDev, ME_DBG_DECODE_DMP1_MASK,
     CRI_CCR0, &arc_debug_data);
 arc_debug_data |= ACL_CLK_MODE_ENABLE;
 _IFX_MEI_DBGLongWordWrite (pDev, ME_DBG_DECODE_DMP1_MASK,
      CRI_CCR0, arc_debug_data);
 IFX_MEI_ControlModeSet (pDev, JTAG_MASTER_MODE);
 return DSL_DEV_MEI_ERR_SUCCESS;
}
