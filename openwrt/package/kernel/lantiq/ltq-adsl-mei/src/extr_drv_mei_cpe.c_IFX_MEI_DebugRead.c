
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
typedef int DSL_DEV_MeiError_t ;
typedef int DSL_DEV_Device_t ;


 int DSL_DEV_MEI_ERR_SUCCESS ;
 int IFX_MEI_ControlModeSet (int *,int ) ;
 int JTAG_MASTER_MODE ;
 int MEI_MASTER_MODE ;
 int ME_DBG_DECODE_DMP1_MASK ;
 int _IFX_MEI_DBGLongWordRead (int *,int ,scalar_t__,scalar_t__*) ;

__attribute__((used)) static DSL_DEV_MeiError_t
IFX_MEI_DebugRead (DSL_DEV_Device_t * pDev, u32 srcaddr, u32 * databuff, u32 databuffsize)
{
 u32 i;
 u32 temp = 0x0;
 u32 address = 0x0;
 u32 *buffer = 0x0;


 IFX_MEI_ControlModeSet (pDev, MEI_MASTER_MODE);


 address = srcaddr;
 buffer = databuff;
 for (i = 0; i < databuffsize; i++) {
  _IFX_MEI_DBGLongWordRead (pDev, ME_DBG_DECODE_DMP1_MASK, address, &temp);
  *buffer = temp;
  address += 4;
  buffer++;
 }


 IFX_MEI_ControlModeSet (pDev, JTAG_MASTER_MODE);

 return DSL_DEV_MEI_ERR_SUCCESS;
}
