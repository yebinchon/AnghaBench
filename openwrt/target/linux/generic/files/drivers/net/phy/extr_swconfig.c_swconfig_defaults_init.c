
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct switch_dev_ops {int attr_port; scalar_t__ get_port_link; scalar_t__ set_port_pvid; scalar_t__ get_port_pvid; scalar_t__ set_vlan_ports; scalar_t__ get_vlan_ports; } ;
struct switch_dev {scalar_t__ def_global; scalar_t__ def_port; scalar_t__ def_vlan; struct switch_dev_ops* ops; } ;


 int GLOBAL_APPLY ;
 int GLOBAL_RESET ;
 int PORT_LINK ;
 int PORT_PVID ;
 int VLAN_PORTS ;
 int set_bit (int ,scalar_t__*) ;
 int swconfig_find_attr_by_name (int *,char*) ;

__attribute__((used)) static void swconfig_defaults_init(struct switch_dev *dev)
{
 const struct switch_dev_ops *ops = dev->ops;

 dev->def_global = 0;
 dev->def_vlan = 0;
 dev->def_port = 0;

 if (ops->get_vlan_ports || ops->set_vlan_ports)
  set_bit(VLAN_PORTS, &dev->def_vlan);

 if (ops->get_port_pvid || ops->set_port_pvid)
  set_bit(PORT_PVID, &dev->def_port);

 if (ops->get_port_link &&
     !swconfig_find_attr_by_name(&ops->attr_port, "link"))
  set_bit(PORT_LINK, &dev->def_port);


 set_bit(GLOBAL_APPLY, &dev->def_global);
 set_bit(GLOBAL_RESET, &dev->def_global);
}
