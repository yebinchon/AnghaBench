
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
typedef int u16 ;
struct TYPE_2__ {int ports; } ;
struct ar8xxx_priv {TYPE_1__ dev; } ;


 int ar8xxx_phy_mmd_read (struct ar8xxx_priv*,int,int,int) ;
 int mmd_eee_adv_to_ethtool_adv_t (int ) ;

__attribute__((used)) static u32
ar8327_read_port_eee_status(struct ar8xxx_priv *priv, int port)
{
 int phy;
 u16 t;

 if (port >= priv->dev.ports)
  return 0;

 if (port == 0 || port == 6)
  return 0;

 phy = port - 1;


 t = ar8xxx_phy_mmd_read(priv, phy, 0x7, 0x8000);

 return mmd_eee_adv_to_ethtool_adv_t(t);
}
