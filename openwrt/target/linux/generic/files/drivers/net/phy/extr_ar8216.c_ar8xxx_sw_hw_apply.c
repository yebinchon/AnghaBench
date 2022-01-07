
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct switch_dev {int ports; } ;
struct ar8xxx_priv {int* vlan_table; int reg_mutex; int * vlan_id; int init; struct ar8xxx_chip* chip; } ;
struct ar8xxx_chip {scalar_t__ reg_arl_ctrl; int (* set_mirror_regs ) (struct ar8xxx_priv*) ;int (* setup_port ) (struct ar8xxx_priv*,int,int) ;int (* vtu_load_vlan ) (struct ar8xxx_priv*,int ,int) ;int (* vtu_flush ) (struct ar8xxx_priv*) ;} ;
typedef int portmask ;


 int AR8216_PORT_CPU ;
 int AR8X16_MAX_PORTS ;
 int AR8X16_MAX_VLANS ;
 int ar8xxx_set_age_time (struct ar8xxx_priv*,scalar_t__) ;
 int memset (int*,int ,int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int stub1 (struct ar8xxx_priv*) ;
 int stub2 (struct ar8xxx_priv*,int ,int) ;
 int stub3 (struct ar8xxx_priv*,int,int) ;
 int stub4 (struct ar8xxx_priv*) ;
 struct ar8xxx_priv* swdev_to_ar8xxx (struct switch_dev*) ;

int
ar8xxx_sw_hw_apply(struct switch_dev *dev)
{
 struct ar8xxx_priv *priv = swdev_to_ar8xxx(dev);
 const struct ar8xxx_chip *chip = priv->chip;
 u8 portmask[AR8X16_MAX_PORTS];
 int i, j;

 mutex_lock(&priv->reg_mutex);

 priv->chip->vtu_flush(priv);

 memset(portmask, 0, sizeof(portmask));
 if (!priv->init) {


  for (j = 0; j < AR8X16_MAX_VLANS; j++) {
   u8 vp = priv->vlan_table[j];

   if (!vp)
    continue;

   for (i = 0; i < dev->ports; i++) {
    u8 mask = (1 << i);
    if (vp & mask)
     portmask[i] |= vp & ~mask;
   }

   chip->vtu_load_vlan(priv, priv->vlan_id[j],
         priv->vlan_table[j]);
  }
 } else {


  for (i = 0; i < dev->ports; i++) {
   if (i == AR8216_PORT_CPU)
    continue;

   portmask[i] = 1 << AR8216_PORT_CPU;
   portmask[AR8216_PORT_CPU] |= (1 << i);
  }
 }


 for (i = 0; i < dev->ports; i++) {
  chip->setup_port(priv, i, portmask[i]);
 }

 chip->set_mirror_regs(priv);


 if (chip->reg_arl_ctrl)
  ar8xxx_set_age_time(priv, chip->reg_arl_ctrl);

 mutex_unlock(&priv->reg_mutex);
 return 0;
}
