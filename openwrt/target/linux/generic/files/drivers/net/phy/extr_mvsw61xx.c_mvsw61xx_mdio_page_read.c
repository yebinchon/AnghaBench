
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct switch_dev {int dummy; } ;


 int MII_MV_PAGE ;
 int mvsw61xx_mdio_read (struct switch_dev*,int,int) ;
 int mvsw61xx_mdio_write (struct switch_dev*,int,int ,int) ;

__attribute__((used)) static int
mvsw61xx_mdio_page_read(struct switch_dev *dev, int port, int page, int reg)
{
 int ret;

 mvsw61xx_mdio_write(dev, port, MII_MV_PAGE, page);
 ret = mvsw61xx_mdio_read(dev, port, reg);
 mvsw61xx_mdio_write(dev, port, MII_MV_PAGE, 0);

 return ret;
}
