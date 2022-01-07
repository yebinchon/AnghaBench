
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int val ;
struct TYPE_2__ {struct switch_val* link; int s; int i; struct switch_val* ports; } ;
struct switch_val {TYPE_1__ value; } ;
struct switch_port_link {int dummy; } ;
struct switch_port {int dummy; } ;
struct switch_dev {int ports; struct switch_val linkbuf; struct switch_val* portbuf; } ;
struct switch_attr {int (* get ) (struct switch_dev*,struct switch_attr const*,struct switch_val*) ;int type; } ;
struct sk_buff {int len; } ;
struct genlmsghdr {int cmd; } ;
struct genl_info {int snd_seq; int snd_portid; int nlhdr; } ;


 int EINVAL ;
 int ENOMEM ;
 int GFP_KERNEL ;
 scalar_t__ IS_ERR (struct genlmsghdr*) ;
 int NLMSG_GOODSIZE ;
 int SWITCH_ATTR_OP_VALUE_INT ;
 int SWITCH_ATTR_OP_VALUE_LINK ;
 int SWITCH_ATTR_OP_VALUE_PORTS ;
 int SWITCH_ATTR_OP_VALUE_STR ;




 int genlmsg_end (struct sk_buff*,struct genlmsghdr*) ;
 struct genlmsghdr* genlmsg_put (struct sk_buff*,int ,int ,int *,int ,int) ;
 int genlmsg_reply (struct sk_buff*,struct genl_info*) ;
 int memset (struct switch_val*,int ,int) ;
 int nla_put_string (struct sk_buff*,int ,int ) ;
 int nla_put_u32 (struct sk_buff*,int ,int ) ;
 struct genlmsghdr* nlmsg_data (int ) ;
 int nlmsg_free (struct sk_buff*) ;
 struct sk_buff* nlmsg_new (int ,int ) ;
 int pr_debug (char*) ;
 int stub1 (struct switch_dev*,struct switch_attr const*,struct switch_val*) ;
 struct switch_dev* swconfig_get_dev (struct genl_info*) ;
 struct switch_attr* swconfig_lookup_attr (struct switch_dev*,struct genl_info*,struct switch_val*) ;
 int swconfig_put_dev (struct switch_dev*) ;
 int swconfig_send_link (struct sk_buff*,struct genl_info*,int ,struct switch_val*) ;
 int swconfig_send_ports (struct sk_buff**,struct genl_info*,int ,struct switch_val*) ;
 int switch_fam ;

__attribute__((used)) static int
swconfig_get_attr(struct sk_buff *skb, struct genl_info *info)
{
 struct genlmsghdr *hdr = nlmsg_data(info->nlhdr);
 const struct switch_attr *attr;
 struct switch_dev *dev;
 struct sk_buff *msg = ((void*)0);
 struct switch_val val;
 int err = -EINVAL;
 int cmd = hdr->cmd;

 dev = swconfig_get_dev(info);
 if (!dev)
  return -EINVAL;

 memset(&val, 0, sizeof(val));
 attr = swconfig_lookup_attr(dev, info, &val);
 if (!attr || !attr->get)
  goto error;

 if (attr->type == 129) {
  val.value.ports = dev->portbuf;
  memset(dev->portbuf, 0,
   sizeof(struct switch_port) * dev->ports);
 } else if (attr->type == 130) {
  val.value.link = &dev->linkbuf;
  memset(&dev->linkbuf, 0, sizeof(struct switch_port_link));
 }

 err = attr->get(dev, attr, &val);
 if (err)
  goto error;

 msg = nlmsg_new(NLMSG_GOODSIZE, GFP_KERNEL);
 if (!msg)
  goto error;

 hdr = genlmsg_put(msg, info->snd_portid, info->snd_seq, &switch_fam,
   0, cmd);
 if (IS_ERR(hdr))
  goto nla_put_failure;

 switch (attr->type) {
 case 131:
  if (nla_put_u32(msg, SWITCH_ATTR_OP_VALUE_INT, val.value.i))
   goto nla_put_failure;
  break;
 case 128:
  if (nla_put_string(msg, SWITCH_ATTR_OP_VALUE_STR, val.value.s))
   goto nla_put_failure;
  break;
 case 129:
  err = swconfig_send_ports(&msg, info,
    SWITCH_ATTR_OP_VALUE_PORTS, &val);
  if (err < 0)
   goto nla_put_failure;
  break;
 case 130:
  err = swconfig_send_link(msg, info,
      SWITCH_ATTR_OP_VALUE_LINK, val.value.link);
  if (err < 0)
   goto nla_put_failure;
  break;
 default:
  pr_debug("invalid type in attribute\n");
  err = -EINVAL;
  goto nla_put_failure;
 }
 genlmsg_end(msg, hdr);
 err = msg->len;
 if (err < 0)
  goto nla_put_failure;

 swconfig_put_dev(dev);
 return genlmsg_reply(msg, info);

nla_put_failure:
 if (msg)
  nlmsg_free(msg);
error:
 swconfig_put_dev(dev);
 if (!err)
  err = -ENOMEM;
 return err;
}
