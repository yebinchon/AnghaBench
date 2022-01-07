
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct mt7530_priv {scalar_t__ base; scalar_t__ bus; } ;


 int iowrite32 (int,scalar_t__) ;
 int mdiobus_write (scalar_t__,int,int,int) ;
 int pr_debug (char*,int,int) ;

__attribute__((used)) static void
mt7530_w32(struct mt7530_priv *priv, u32 reg, u32 val)
{
 if (priv->bus) {
  mdiobus_write(priv->bus, 0x1f, 0x1f, (reg >> 6) & 0x3ff);
  mdiobus_write(priv->bus, 0x1f, (reg >> 2) & 0xf, val & 0xffff);
  mdiobus_write(priv->bus, 0x1f, 0x10, val >> 16);
  return;
 }

 pr_debug("MT7530 MDIO Write[%04x]=%08x\n", reg, val);
 iowrite32(val, priv->base + reg);
}
