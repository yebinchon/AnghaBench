
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct switch_val {int port_vlan; } ;
struct switch_dev {int ports; } ;
struct switch_attr {int dummy; } ;


 scalar_t__ ar8327_sw_set_port_igmp_snooping (struct switch_dev*,struct switch_attr const*,struct switch_val*) ;

int
ar8327_sw_set_igmp_snooping(struct switch_dev *dev,
       const struct switch_attr *attr,
       struct switch_val *val)
{
 int port;

 for (port = 0; port < dev->ports; port++) {
  val->port_vlan = port;
  if (ar8327_sw_set_port_igmp_snooping(dev, attr, val))
   break;
 }

 return 0;
}
