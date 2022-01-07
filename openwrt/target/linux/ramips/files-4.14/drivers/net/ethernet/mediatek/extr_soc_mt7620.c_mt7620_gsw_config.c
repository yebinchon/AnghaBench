
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mt7620_gsw {int * base; } ;
struct fe_priv {int dev; int * mii_bus; TYPE_1__* soc; } ;
struct TYPE_2__ {scalar_t__ swpriv; } ;


 scalar_t__ mdiobus_get_phy (int *,int) ;
 int mt7530_probe (int ,int *,int *,int) ;

__attribute__((used)) static int mt7620_gsw_config(struct fe_priv *priv)
{
 struct mt7620_gsw *gsw = (struct mt7620_gsw *) priv->soc->swpriv;


 if (priv->mii_bus && mdiobus_get_phy(priv->mii_bus, 0x1f)) {
  mt7530_probe(priv->dev, gsw->base, ((void*)0), 0);
  mt7530_probe(priv->dev, ((void*)0), priv->mii_bus, 1);
 } else {
  mt7530_probe(priv->dev, gsw->base, ((void*)0), 1);
 }

 return 0;
}
