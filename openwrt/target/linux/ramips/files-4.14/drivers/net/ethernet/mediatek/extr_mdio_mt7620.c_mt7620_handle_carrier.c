
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fe_priv {int netdev; int phy; } ;


 scalar_t__ mt7620_has_carrier (struct fe_priv*) ;
 int netif_carrier_off (int ) ;
 int netif_carrier_on (int ) ;

void mt7620_handle_carrier(struct fe_priv *priv)
{
 if (!priv->phy)
  return;

 if (mt7620_has_carrier(priv))
  netif_carrier_on(priv->netdev);
 else
  netif_carrier_off(priv->netdev);
}
