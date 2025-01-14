
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct mt7530_priv {int dummy; } ;


 int BIT (int) ;
 int REG_ESW_VLAN_VTCR ;
 int mt7530_r32 (struct mt7530_priv*,int ) ;
 int mt7530_w32 (struct mt7530_priv*,int ,int) ;
 int printk (char*) ;
 int udelay (int) ;

__attribute__((used)) static void
mt7530_vtcr(struct mt7530_priv *priv, u32 cmd, u32 val)
{
 int i;

 mt7530_w32(priv, REG_ESW_VLAN_VTCR, BIT(31) | (cmd << 12) | val);

 for (i = 0; i < 20; i++) {
  u32 val = mt7530_r32(priv, REG_ESW_VLAN_VTCR);

  if ((val & BIT(31)) == 0)
   break;

  udelay(1000);
 }
 if (i == 20)
  printk("mt7530: vtcr timeout\n");
}
