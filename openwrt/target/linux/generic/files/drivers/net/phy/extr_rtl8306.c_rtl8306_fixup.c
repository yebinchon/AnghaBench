
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u16 ;
struct rtl_priv {int fixup; int page; int dev; int bus; } ;
struct TYPE_2__ {int addr; int bus; } ;
struct phy_device {int phy_id; TYPE_1__ mdio; } ;
typedef int priv ;


 int RTL8306_MAGIC ;
 int RTL_REG_CHIPID ;
 int memset (struct rtl_priv*,int ,int) ;
 int rtl_get (int *,int ) ;

__attribute__((used)) static int
rtl8306_fixup(struct phy_device *pdev)
{
 struct rtl_priv priv;
 u16 chipid;


 if (pdev->mdio.addr != 0 && pdev->mdio.addr != 4)
  return 0;

 memset(&priv, 0, sizeof(priv));
 priv.fixup = 1;
 priv.page = -1;
 priv.bus = pdev->mdio.bus;
 chipid = rtl_get(&priv.dev, RTL_REG_CHIPID);
 if (chipid == 0x5988)
  pdev->phy_id = RTL8306_MAGIC;

 return 0;
}
