
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct switch_dev {unsigned long def_global; unsigned long def_vlan; unsigned long def_port; TYPE_1__* ops; } ;
struct switch_attrlist {int n_attr; TYPE_2__* attr; } ;
struct switch_attr {int dummy; } ;
struct swconfig_callback {int* args; scalar_t__ msg; int fill; struct genl_info* info; } ;
struct sk_buff {int dummy; } ;
struct genlmsghdr {int cmd; } ;
struct genl_info {int nlhdr; } ;
typedef int cb ;
struct TYPE_4__ {scalar_t__ disabled; } ;
struct TYPE_3__ {struct switch_attrlist attr_port; struct switch_attrlist attr_vlan; struct switch_attrlist attr_global; } ;


 int ARRAY_SIZE (struct switch_attr*) ;
 int EINVAL ;
 int SWITCH_ATTR_DEFAULTS_OFFSET ;



 int WARN_ON (int) ;
 struct switch_attr* default_global ;
 struct switch_attr* default_port ;
 struct switch_attr* default_vlan ;
 int genlmsg_reply (scalar_t__,struct genl_info*) ;
 int memset (struct swconfig_callback*,int ,int) ;
 struct genlmsghdr* nlmsg_data (int ) ;
 int nlmsg_free (scalar_t__) ;
 int swconfig_dump_attr ;
 struct switch_dev* swconfig_get_dev (struct genl_info*) ;
 int swconfig_put_dev (struct switch_dev*) ;
 int swconfig_send_multipart (struct swconfig_callback*,void*) ;
 int test_bit (int,unsigned long*) ;

__attribute__((used)) static int
swconfig_list_attrs(struct sk_buff *skb, struct genl_info *info)
{
 struct genlmsghdr *hdr = nlmsg_data(info->nlhdr);
 const struct switch_attrlist *alist;
 struct switch_dev *dev;
 struct swconfig_callback cb;
 int err = -EINVAL;
 int i;


 struct switch_attr *def_list;
 unsigned long *def_active;
 int n_def;

 dev = swconfig_get_dev(info);
 if (!dev)
  return -EINVAL;

 switch (hdr->cmd) {
 case 130:
  alist = &dev->ops->attr_global;
  def_list = default_global;
  def_active = &dev->def_global;
  n_def = ARRAY_SIZE(default_global);
  break;
 case 128:
  alist = &dev->ops->attr_vlan;
  def_list = default_vlan;
  def_active = &dev->def_vlan;
  n_def = ARRAY_SIZE(default_vlan);
  break;
 case 129:
  alist = &dev->ops->attr_port;
  def_list = default_port;
  def_active = &dev->def_port;
  n_def = ARRAY_SIZE(default_port);
  break;
 default:
  WARN_ON(1);
  goto out;
 }

 memset(&cb, 0, sizeof(cb));
 cb.info = info;
 cb.fill = swconfig_dump_attr;
 for (i = 0; i < alist->n_attr; i++) {
  if (alist->attr[i].disabled)
   continue;
  cb.args[0] = i;
  err = swconfig_send_multipart(&cb, (void *) &alist->attr[i]);
  if (err < 0)
   goto error;
 }


 for (i = 0; i < n_def; i++) {
  if (!test_bit(i, def_active))
   continue;
  cb.args[0] = SWITCH_ATTR_DEFAULTS_OFFSET + i;
  err = swconfig_send_multipart(&cb, (void *) &def_list[i]);
  if (err < 0)
   goto error;
 }
 swconfig_put_dev(dev);

 if (!cb.msg)
  return 0;

 return genlmsg_reply(cb.msg, info);

error:
 if (cb.msg)
  nlmsg_free(cb.msg);
out:
 swconfig_put_dev(dev);
 return err;
}
