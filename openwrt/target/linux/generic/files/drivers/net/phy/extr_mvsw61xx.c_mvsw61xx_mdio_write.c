
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct switch_dev {int dummy; } ;


 int MV_GLOBAL2REG (int ) ;
 int MV_INDIRECT_ADDR_S ;
 int MV_INDIRECT_INPROGRESS ;
 int MV_INDIRECT_WRITE ;
 int SMI_DATA ;
 int SMI_OP ;
 scalar_t__ mvsw61xx_wait_mask_s (struct switch_dev*,int ,int ,int ) ;
 int sw16 (struct switch_dev*,int ,int) ;

__attribute__((used)) static int
mvsw61xx_mdio_write(struct switch_dev *dev, int addr, int reg, u16 val)
{
 sw16(dev, MV_GLOBAL2REG(SMI_DATA), val);

 sw16(dev, MV_GLOBAL2REG(SMI_OP),
      MV_INDIRECT_WRITE | (addr << MV_INDIRECT_ADDR_S) | reg);

 return mvsw61xx_wait_mask_s(dev, MV_GLOBAL2REG(SMI_OP),
        MV_INDIRECT_INPROGRESS, 0) < 0;
}
