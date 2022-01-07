
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct rtl8366_smi {int parent; } ;


 int ETIMEDOUT ;
 int REG_RD (struct rtl8366_smi*,int ,int*) ;
 int REG_WR (struct rtl8366_smi*,int ,int) ;
 int RTL8367_CHIP_RESET_HW ;
 int RTL8367_CHIP_RESET_REG ;
 int RTL8367_RESET_DELAY ;
 int dev_err (int ,char*) ;
 int msleep (int) ;

__attribute__((used)) static int rtl8367_reset_chip(struct rtl8366_smi *smi)
{
 int timeout = 10;
 int err;
 u32 data;

 REG_WR(smi, RTL8367_CHIP_RESET_REG, RTL8367_CHIP_RESET_HW);
 msleep(RTL8367_RESET_DELAY);

 do {
  REG_RD(smi, RTL8367_CHIP_RESET_REG, &data);
  if (!(data & RTL8367_CHIP_RESET_HW))
   break;

  msleep(1);
 } while (--timeout);

 if (!timeout) {
  dev_err(smi->parent, "chip reset timed out\n");
  return -ETIMEDOUT;
 }

 return 0;
}
