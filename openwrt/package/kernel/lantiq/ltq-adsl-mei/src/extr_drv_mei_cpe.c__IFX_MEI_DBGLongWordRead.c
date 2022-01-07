
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int DSL_DEV_MeiError_t ;
typedef int DSL_DEV_Device_t ;


 int DSL_DEV_MEI_ERR_SUCCESS ;
 int IFX_MEI_LongWordReadOffset (int *,int ,int *) ;
 int IFX_MEI_LongWordWriteOffset (int *,int ,int ) ;
 scalar_t__ ME_DBG_DATA ;
 scalar_t__ ME_DBG_DECODE ;
 scalar_t__ ME_DBG_RD_AD ;
 int meiPollForDbgDone (int *) ;

__attribute__((used)) static DSL_DEV_MeiError_t
_IFX_MEI_DBGLongWordRead (DSL_DEV_Device_t * pDev, u32 DEC_mode,
    u32 address, u32 * data)
{
 IFX_MEI_LongWordWriteOffset (pDev, (u32) ME_DBG_DECODE, DEC_mode);
 IFX_MEI_LongWordWriteOffset (pDev, (u32) ME_DBG_RD_AD, address);
 meiPollForDbgDone (pDev);
 IFX_MEI_LongWordReadOffset (pDev, (u32) ME_DBG_DATA, data);
 return DSL_DEV_MEI_ERR_SUCCESS;
}
