
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef scalar_t__ LTQ_FUSE_BASE ;
typedef int DSL_DEV_Device_t ;


 int ADSL_DILV_BASE ;
 int BRAM_ADDR_BIT_MASK ;
 int BRAM_BASE ;
 int IFX_MEI_DMAWrite (int *,int ,int*,int) ;
 int IFX_MEI_FuseInit (int *) ;
 int IFX_MEI_LongWordRead (int,int*) ;
 int IFX_MEI_LongWordWrite (int,int) ;
 int IRAM0_ADDR_BIT_MASK ;
 int IRAM0_BASE ;
 int IRAM1_ADDR_BIT_MASK ;
 int IRAM1_BASE ;
 scalar_t__ LTQ_RCU_RST ;
 int RX_DILV_ADDR_BIT_MASK ;

__attribute__((used)) static void
IFX_MEI_FuseProg (DSL_DEV_Device_t * pDev)
{
 u32 reg_data, fuse_value;
 int i = 0;

 IFX_MEI_LongWordRead ((u32) LTQ_RCU_RST, &reg_data);
 while ((reg_data & 0x10000000) == 0) {
  IFX_MEI_LongWordRead ((u32) LTQ_RCU_RST, &reg_data);
  i++;

  if (i == 0x4000)
   return;
 }


 IFX_MEI_LongWordRead ((u32) LTQ_RCU_RST, &reg_data);
 IFX_MEI_LongWordWrite ((u32) LTQ_RCU_RST, reg_data | (1 << 24));

 IFX_MEI_FuseInit (pDev);
 for (i = 0; i < 4; i++) {
  IFX_MEI_LongWordRead ((u32) (LTQ_FUSE_BASE) + i * 4, &fuse_value);
  switch (fuse_value & 0xF0000) {
  case 0x80000:
   reg_data = ((fuse_value & RX_DILV_ADDR_BIT_MASK) |
     (RX_DILV_ADDR_BIT_MASK + 0x1));
   IFX_MEI_DMAWrite (pDev, ADSL_DILV_BASE, &reg_data, 1);
   break;
  case 0x90000:
   reg_data = ((fuse_value & RX_DILV_ADDR_BIT_MASK) |
     (RX_DILV_ADDR_BIT_MASK + 0x1));
   IFX_MEI_DMAWrite (pDev, ADSL_DILV_BASE + 4, &reg_data, 1);
   break;
  case 0xA0000:
   reg_data = ((fuse_value & IRAM0_ADDR_BIT_MASK) |
     (IRAM0_ADDR_BIT_MASK + 0x1));
   IFX_MEI_DMAWrite (pDev, IRAM0_BASE, &reg_data, 1);
   break;
  case 0xB0000:
   reg_data = ((fuse_value & IRAM0_ADDR_BIT_MASK) |
     (IRAM0_ADDR_BIT_MASK + 0x1));
   IFX_MEI_DMAWrite (pDev, IRAM0_BASE + 4, &reg_data, 1);
   break;
  case 0xC0000:
   reg_data = ((fuse_value & IRAM1_ADDR_BIT_MASK) |
     (IRAM1_ADDR_BIT_MASK + 0x1));
   IFX_MEI_DMAWrite (pDev, IRAM1_BASE, &reg_data, 1);
   break;
  case 0xD0000:
   reg_data = ((fuse_value & IRAM1_ADDR_BIT_MASK) |
     (IRAM1_ADDR_BIT_MASK + 0x1));
   IFX_MEI_DMAWrite (pDev, IRAM1_BASE + 4, &reg_data, 1);
   break;
  case 0xE0000:
   reg_data = ((fuse_value & BRAM_ADDR_BIT_MASK) |
     (BRAM_ADDR_BIT_MASK + 0x1));
   IFX_MEI_DMAWrite (pDev, BRAM_BASE, &reg_data, 1);
   break;
  case 0xF0000:
   reg_data = ((fuse_value & BRAM_ADDR_BIT_MASK) |
     (BRAM_ADDR_BIT_MASK + 0x1));
   IFX_MEI_DMAWrite (pDev, BRAM_BASE + 4, &reg_data, 1);
   break;
  default:
   break;
  }
 }
 IFX_MEI_LongWordRead ((u32) LTQ_RCU_RST, &reg_data);
 IFX_MEI_LongWordWrite ((u32) LTQ_RCU_RST, reg_data & ~(1 << 24));
 IFX_MEI_LongWordRead ((u32) LTQ_RCU_RST, &reg_data);
}
