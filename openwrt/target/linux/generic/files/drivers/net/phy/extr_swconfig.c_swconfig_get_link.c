
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {struct switch_port_link* link; } ;
struct switch_val {scalar_t__ port_vlan; TYPE_1__ value; } ;
struct switch_port_link {int dummy; } ;
struct switch_dev {scalar_t__ ports; TYPE_2__* ops; } ;
struct switch_attr {int dummy; } ;
struct TYPE_4__ {int (* get_port_link ) (struct switch_dev*,scalar_t__,struct switch_port_link*) ;} ;


 int EINVAL ;
 int EOPNOTSUPP ;
 int memset (struct switch_port_link*,int ,int) ;
 int stub1 (struct switch_dev*,scalar_t__,struct switch_port_link*) ;

__attribute__((used)) static int
swconfig_get_link(struct switch_dev *dev, const struct switch_attr *attr,
   struct switch_val *val)
{
 struct switch_port_link *link = val->value.link;

 if (val->port_vlan >= dev->ports)
  return -EINVAL;

 if (!dev->ops->get_port_link)
  return -EOPNOTSUPP;

 memset(link, 0, sizeof(*link));
 return dev->ops->get_port_link(dev, val->port_vlan, link);
}
