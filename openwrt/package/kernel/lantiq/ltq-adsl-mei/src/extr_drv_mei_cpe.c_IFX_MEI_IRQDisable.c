
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int DSL_DEV_Device_t ;


 int IFX_MEI_LongWordWriteOffset (int *,int ,int) ;
 scalar_t__ ME_ARC2ME_MASK ;

__attribute__((used)) static void
IFX_MEI_IRQDisable (DSL_DEV_Device_t * pDev)
{
 IFX_MEI_LongWordWriteOffset (pDev, (u32) ME_ARC2ME_MASK, 0x0);
}
