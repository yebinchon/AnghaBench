
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u16 ;
struct mt7620_gsw {int dummy; } ;
struct mii_bus {struct fe_priv* priv; } ;
struct fe_priv {TYPE_1__* soc; } ;
struct TYPE_2__ {scalar_t__ swpriv; } ;


 int _mt7620_mii_write (struct mt7620_gsw*,int,int,int ) ;

int mt7620_mdio_write(struct mii_bus *bus, int phy_addr, int phy_reg, u16 val)
{
 struct fe_priv *priv = bus->priv;
 struct mt7620_gsw *gsw = (struct mt7620_gsw *)priv->soc->swpriv;

 return _mt7620_mii_write(gsw, phy_addr, phy_reg, val);
}
