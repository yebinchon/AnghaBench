
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mii_bus {struct ar8xxx_priv* priv; } ;
struct ar8xxx_priv {TYPE_1__* chip; } ;
struct TYPE_2__ {int (* phy_read ) (struct ar8xxx_priv*,int,int) ;} ;


 int stub1 (struct ar8xxx_priv*,int,int) ;

__attribute__((used)) static int
ar8xxx_phy_read(struct mii_bus *bus, int phy_addr, int reg_addr)
{
 struct ar8xxx_priv *priv = bus->priv;
 return priv->chip->phy_read(priv, phy_addr, reg_addr);
}
