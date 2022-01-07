
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct switch_dev {int cpu_port; } ;
struct rtl_priv {scalar_t__ do_cpu; } ;


 int NULL_VID_REPLACE ;
 int PORTMASK ;
 int PVID ;
 int RTL8306_NUM_PORTS ;
 int RTL8306_NUM_VLANS ;
 int RTL_PORT_REG (int,int ) ;
 int RTL_REG_CPUPORT ;
 int RTL_REG_EN_CPUPORT ;
 int RTL_REG_EN_TAG_CLR ;
 int RTL_REG_EN_TAG_IN ;
 int RTL_REG_EN_TAG_OUT ;
 int RTL_REG_EN_TRUNK ;
 int RTL_REG_TRUNK_PORTSEL ;
 int RTL_REG_VLAN_ENABLE ;
 int RTL_REG_VLAN_FILTER ;
 int RTL_VLAN_REG (int,int ) ;
 int TAG_INSERT ;
 int VID ;
 int VID_INSERT ;
 int rtl_hw_apply (struct switch_dev*) ;
 int rtl_set (struct switch_dev*,int ,int) ;
 struct rtl_priv* to_rtl (struct switch_dev*) ;

__attribute__((used)) static void
rtl_hw_init(struct switch_dev *dev)
{
 struct rtl_priv *priv = to_rtl(dev);
 int cpu_mask = 1 << dev->cpu_port;
 int i;

 rtl_set(dev, RTL_REG_VLAN_ENABLE, 0);
 rtl_set(dev, RTL_REG_VLAN_FILTER, 0);
 rtl_set(dev, RTL_REG_EN_TRUNK, 0);
 rtl_set(dev, RTL_REG_TRUNK_PORTSEL, 0);


 if (priv->do_cpu) {
  rtl_set(dev, RTL_REG_CPUPORT, dev->cpu_port);
  rtl_set(dev, RTL_REG_EN_CPUPORT, 1);
 } else {
  rtl_set(dev, RTL_REG_CPUPORT, 7);
  rtl_set(dev, RTL_REG_EN_CPUPORT, 0);
 }
 rtl_set(dev, RTL_REG_EN_TAG_OUT, 0);
 rtl_set(dev, RTL_REG_EN_TAG_IN, 0);
 rtl_set(dev, RTL_REG_EN_TAG_CLR, 0);


 for (i = 0; i < RTL8306_NUM_VLANS; i++) {
  rtl_set(dev, RTL_VLAN_REG(i, VID), i);
  rtl_set(dev, RTL_VLAN_REG(i, PORTMASK), 0);
 }


 for (i = 0; i < RTL8306_NUM_PORTS; i++) {
  unsigned long mask;

  if ((1 << i) == cpu_mask)
   mask = ((1 << RTL8306_NUM_PORTS) - 1) & ~cpu_mask;
  else
   mask = cpu_mask | (1 << i);

  rtl_set(dev, RTL_VLAN_REG(i, PORTMASK), mask);
  rtl_set(dev, RTL_PORT_REG(i, PVID), i);
  rtl_set(dev, RTL_PORT_REG(i, NULL_VID_REPLACE), 1);
  rtl_set(dev, RTL_PORT_REG(i, VID_INSERT), 1);
  rtl_set(dev, RTL_PORT_REG(i, TAG_INSERT), 3);
 }
 rtl_hw_apply(dev);
}
