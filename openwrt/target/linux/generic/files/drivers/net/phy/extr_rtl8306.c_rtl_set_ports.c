
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {struct switch_port* ports; } ;
struct switch_val {int len; int port_vlan; TYPE_1__ value; } ;
struct switch_port {int id; int flags; } ;
struct switch_dev {int cpu_port; int vlans; } ;


 int NON_PVID_DISCARD ;
 int PORTMASK ;
 int PVID ;
 int RTL8306_NUM_PORTS ;
 int RTL_PORT_REG (int,int ) ;
 int RTL_VLAN_REG (int,int ) ;
 int SWITCH_PORT_FLAG_TAGGED ;
 int TAG_INSERT ;
 int VID_INSERT ;
 unsigned int rtl_get (struct switch_dev*,int ) ;
 int rtl_set (struct switch_dev*,int ,int) ;

__attribute__((used)) static int
rtl_set_ports(struct switch_dev *dev, struct switch_val *val)
{
 unsigned int mask = 0;
 unsigned int oldmask;
 int i;

 for(i = 0; i < val->len; i++)
 {
  struct switch_port *port = &val->value.ports[i];
  bool tagged = 0;

  mask |= (1 << port->id);

  if (port->id == dev->cpu_port)
   continue;

  if ((i == dev->cpu_port) ||
   (port->flags & (1 << SWITCH_PORT_FLAG_TAGGED)))
   tagged = 1;


  if (!tagged)
   rtl_set(dev, RTL_PORT_REG(port->id, PVID), val->port_vlan);

  rtl_set(dev, RTL_PORT_REG(port->id, NON_PVID_DISCARD), (tagged ? 0 : 1));
  rtl_set(dev, RTL_PORT_REG(port->id, VID_INSERT), (tagged ? 0 : 1));
  rtl_set(dev, RTL_PORT_REG(port->id, TAG_INSERT), (tagged ? 2 : 1));
 }

 oldmask = rtl_get(dev, RTL_VLAN_REG(val->port_vlan, PORTMASK));
 rtl_set(dev, RTL_VLAN_REG(val->port_vlan, PORTMASK), mask);


 oldmask &= ~mask;
 for (i = 0; i < RTL8306_NUM_PORTS; i++) {
  if (!(oldmask & (1 << i)))
   continue;

  if (i == dev->cpu_port)
   continue;

  if (rtl_get(dev, RTL_PORT_REG(i, PVID)) == val->port_vlan)
   rtl_set(dev, RTL_PORT_REG(i, PVID), dev->vlans - 1);
 }

 return 0;
}
