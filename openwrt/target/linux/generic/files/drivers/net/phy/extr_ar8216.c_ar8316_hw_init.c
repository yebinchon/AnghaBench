
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct ar8xxx_priv {int initialized; TYPE_1__* phy; scalar_t__ port4_phy; } ;
struct TYPE_2__ {scalar_t__ interface; } ;


 int AR8316_REG_POSTRIP ;
 int EINVAL ;
 scalar_t__ PHY_INTERFACE_MODE_GMII ;
 scalar_t__ PHY_INTERFACE_MODE_RGMII ;
 int ar8xxx_phy_dbg_write (struct ar8xxx_priv*,int,int,int) ;
 int ar8xxx_phy_init (struct ar8xxx_priv*) ;
 int ar8xxx_read (struct ar8xxx_priv*,int ) ;
 int ar8xxx_write (struct ar8xxx_priv*,int ,int) ;
 int msleep (int) ;
 int pr_err (char*,scalar_t__) ;
 int pr_info (char*) ;

__attribute__((used)) static int
ar8316_hw_init(struct ar8xxx_priv *priv)
{
 u32 val, newval;

 val = ar8xxx_read(priv, AR8316_REG_POSTRIP);

 if (priv->phy->interface == PHY_INTERFACE_MODE_RGMII) {
  if (priv->port4_phy) {

   newval = 0x81461bea;
   pr_info("ar8316: Using port 4 as PHY\n");
  } else {
   newval = 0x01261be2;
   pr_info("ar8316: Using port 4 as switch port\n");
  }
 } else if (priv->phy->interface == PHY_INTERFACE_MODE_GMII) {

  newval = 0x010e5b71;
 } else {

  pr_err("ar8316: unsupported mii mode: %d.\n",
         priv->phy->interface);
  return -EINVAL;
 }

 if (val == newval)
  goto out;

 ar8xxx_write(priv, AR8316_REG_POSTRIP, newval);

 if (priv->port4_phy &&
     priv->phy->interface == PHY_INTERFACE_MODE_RGMII) {

  ar8xxx_phy_dbg_write(priv, 4, 0x12, 0x480c);

  ar8xxx_phy_dbg_write(priv, 4, 0x0, 0x824e);

  ar8xxx_phy_dbg_write(priv, 4, 0x5, 0x3d47);
  msleep(1000);
 }

 ar8xxx_phy_init(priv);

out:
 priv->initialized = 1;
 return 0;
}
