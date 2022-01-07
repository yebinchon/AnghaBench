
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct switch_dev {int dummy; } ;


 int ETIMEDOUT ;
 int MV_GLOBAL2REG (int ) ;
 int MV_INDIRECT_ADDR_S ;
 int MV_INDIRECT_INPROGRESS ;
 int MV_INDIRECT_READ ;
 int SMI_DATA ;
 int SMI_OP ;
 scalar_t__ mvsw61xx_wait_mask_s (struct switch_dev*,int ,int ,int ) ;
 int sr16 (struct switch_dev*,int ) ;
 int sw16 (struct switch_dev*,int ,int) ;

__attribute__((used)) static int
mvsw61xx_mdio_read(struct switch_dev *dev, int addr, int reg)
{
 sw16(dev, MV_GLOBAL2REG(SMI_OP),
      MV_INDIRECT_READ | (addr << MV_INDIRECT_ADDR_S) | reg);

 if (mvsw61xx_wait_mask_s(dev, MV_GLOBAL2REG(SMI_OP),
     MV_INDIRECT_INPROGRESS, 0) < 0)
  return -ETIMEDOUT;

 return sr16(dev, MV_GLOBAL2REG(SMI_DATA));
}
