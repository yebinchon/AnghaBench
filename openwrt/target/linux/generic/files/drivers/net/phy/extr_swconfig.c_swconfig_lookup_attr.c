
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct switch_val {struct switch_attr const* attr; void* port_vlan; } ;
struct switch_dev {unsigned long def_global; unsigned long def_vlan; unsigned long def_port; void* ports; TYPE_1__* ops; void* vlans; } ;
struct switch_attrlist {unsigned int n_attr; struct switch_attr* attr; } ;
struct switch_attr {scalar_t__ disabled; } ;
struct genlmsghdr {int cmd; } ;
struct genl_info {int * attrs; int nlhdr; } ;
struct TYPE_2__ {struct switch_attrlist attr_port; struct switch_attrlist attr_vlan; struct switch_attrlist attr_global; } ;


 int ARRAY_SIZE (struct switch_attr*) ;
 unsigned int SWITCH_ATTR_DEFAULTS_OFFSET ;
 size_t SWITCH_ATTR_OP_ID ;
 size_t SWITCH_ATTR_OP_PORT ;
 size_t SWITCH_ATTR_OP_VLAN ;






 int WARN_ON (int) ;
 struct switch_attr* default_global ;
 struct switch_attr* default_port ;
 struct switch_attr* default_vlan ;
 void* nla_get_u32 (int ) ;
 struct genlmsghdr* nlmsg_data (int ) ;
 int pr_debug (char*) ;
 int test_bit (unsigned int,unsigned long*) ;

__attribute__((used)) static const struct switch_attr *
swconfig_lookup_attr(struct switch_dev *dev, struct genl_info *info,
  struct switch_val *val)
{
 struct genlmsghdr *hdr = nlmsg_data(info->nlhdr);
 const struct switch_attrlist *alist;
 const struct switch_attr *attr = ((void*)0);
 unsigned int attr_id;


 struct switch_attr *def_list;
 unsigned long *def_active;
 int n_def;

 if (!info->attrs[SWITCH_ATTR_OP_ID])
  goto done;

 switch (hdr->cmd) {
 case 130:
 case 133:
  alist = &dev->ops->attr_global;
  def_list = default_global;
  def_active = &dev->def_global;
  n_def = ARRAY_SIZE(default_global);
  break;
 case 128:
 case 131:
  alist = &dev->ops->attr_vlan;
  def_list = default_vlan;
  def_active = &dev->def_vlan;
  n_def = ARRAY_SIZE(default_vlan);
  if (!info->attrs[SWITCH_ATTR_OP_VLAN])
   goto done;
  val->port_vlan = nla_get_u32(info->attrs[SWITCH_ATTR_OP_VLAN]);
  if (val->port_vlan >= dev->vlans)
   goto done;
  break;
 case 129:
 case 132:
  alist = &dev->ops->attr_port;
  def_list = default_port;
  def_active = &dev->def_port;
  n_def = ARRAY_SIZE(default_port);
  if (!info->attrs[SWITCH_ATTR_OP_PORT])
   goto done;
  val->port_vlan = nla_get_u32(info->attrs[SWITCH_ATTR_OP_PORT]);
  if (val->port_vlan >= dev->ports)
   goto done;
  break;
 default:
  WARN_ON(1);
  goto done;
 }

 if (!alist)
  goto done;

 attr_id = nla_get_u32(info->attrs[SWITCH_ATTR_OP_ID]);
 if (attr_id >= SWITCH_ATTR_DEFAULTS_OFFSET) {
  attr_id -= SWITCH_ATTR_DEFAULTS_OFFSET;
  if (attr_id >= n_def)
   goto done;
  if (!test_bit(attr_id, def_active))
   goto done;
  attr = &def_list[attr_id];
 } else {
  if (attr_id >= alist->n_attr)
   goto done;
  attr = &alist->attr[attr_id];
 }

 if (attr->disabled)
  attr = ((void*)0);

done:
 if (!attr)
  pr_debug("attribute lookup failed\n");
 val->attr = attr;
 return attr;
}
