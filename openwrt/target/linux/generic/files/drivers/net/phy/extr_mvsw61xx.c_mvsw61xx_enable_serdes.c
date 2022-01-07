
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct switch_dev {int dummy; } ;


 int BMCR_PDOWN ;
 int MII_BMCR ;
 int MV_PAGE_FIBER_SERDES ;
 int MV_REG_FIBER_SERDES ;
 int mvsw61xx_mdio_page_read (struct switch_dev*,int ,int ,int ) ;
 int mvsw61xx_mdio_page_write (struct switch_dev*,int ,int ,int ,int) ;

__attribute__((used)) static void mvsw61xx_enable_serdes(struct switch_dev *dev)
{
 int bmcr = mvsw61xx_mdio_page_read(dev, MV_REG_FIBER_SERDES,
        MV_PAGE_FIBER_SERDES, MII_BMCR);
 if (bmcr < 0)
  return;

 if (bmcr & BMCR_PDOWN)
  mvsw61xx_mdio_page_write(dev, MV_REG_FIBER_SERDES,
      MV_PAGE_FIBER_SERDES, MII_BMCR,
      bmcr & ~BMCR_PDOWN);
}
