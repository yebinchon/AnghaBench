
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct rtl8366_smi {int parent; } ;


 int ENODEV ;
 int REG_RD (struct rtl8366_smi*,int ,int*) ;
 int REG_WR (struct rtl8366_smi*,int ,int ) ;
 int RTL8367_CHIP_MODE_MASK ;
 int RTL8367_CHIP_MODE_REG ;
 int RTL8367_CHIP_VER_REG ;
 int RTL8367_CHIP_VER_RLVID_MASK ;
 int RTL8367_CHIP_VER_RLVID_SHIFT ;
 int RTL8367_RTL_MAGIC_ID_REG ;
 int RTL8367_RTL_MAGIC_ID_VAL ;
 int dev_err (int ,char*,int) ;
 int rtl8367_init_regs0 (struct rtl8366_smi*,int) ;
 int rtl8367_init_regs1 (struct rtl8366_smi*,int) ;
 int rtl8367_init_regs2 (struct rtl8366_smi*,int) ;
 int rtl8367_read_phy_reg (struct rtl8366_smi*,int ,int,int*) ;
 int rtl8367_write_phy_reg (struct rtl8366_smi*,int ,int,int) ;

__attribute__((used)) static int rtl8367_init_regs(struct rtl8366_smi *smi)
{
 u32 data;
 u32 rlvid;
 u32 mode;
 int err;

 REG_WR(smi, RTL8367_RTL_MAGIC_ID_REG, RTL8367_RTL_MAGIC_ID_VAL);

 REG_RD(smi, RTL8367_CHIP_VER_REG, &data);
 rlvid = (data >> RTL8367_CHIP_VER_RLVID_SHIFT) &
  RTL8367_CHIP_VER_RLVID_MASK;

 REG_RD(smi, RTL8367_CHIP_MODE_REG, &data);
 mode = data & RTL8367_CHIP_MODE_MASK;

 switch (rlvid) {
 case 0:
  err = rtl8367_init_regs0(smi, mode);
  break;

 case 1:
  err = rtl8367_write_phy_reg(smi, 0, 31, 5);
  if (err)
   break;

  err = rtl8367_write_phy_reg(smi, 0, 5, 0x3ffe);
  if (err)
   break;

  err = rtl8367_read_phy_reg(smi, 0, 6, &data);
  if (err)
   break;

  if (data == 0x94eb) {
   err = rtl8367_init_regs1(smi, mode);
  } else if (data == 0x2104) {
   err = rtl8367_init_regs2(smi, mode);
  } else {
   dev_err(smi->parent, "unknow phy data %04x\n", data);
   return -ENODEV;
  }

  break;

 default:
  dev_err(smi->parent, "unknow rlvid %u\n", rlvid);
  err = -ENODEV;
  break;
 }

 return err;
}
