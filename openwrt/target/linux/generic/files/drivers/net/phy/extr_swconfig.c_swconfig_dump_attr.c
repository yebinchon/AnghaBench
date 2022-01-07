
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct switch_attr {int type; scalar_t__ description; scalar_t__ name; } ;
struct swconfig_callback {int* args; struct sk_buff* msg; struct genl_info* info; } ;
struct sk_buff {int len; } ;
struct genl_info {int snd_seq; int snd_portid; } ;


 int EMSGSIZE ;
 scalar_t__ IS_ERR (void*) ;
 int NLM_F_MULTI ;
 int SWITCH_ATTR_OP_DESCRIPTION ;
 int SWITCH_ATTR_OP_ID ;
 int SWITCH_ATTR_OP_NAME ;
 int SWITCH_ATTR_OP_TYPE ;
 int SWITCH_CMD_NEW_ATTR ;
 int genlmsg_cancel (struct sk_buff*,void*) ;
 int genlmsg_end (struct sk_buff*,void*) ;
 void* genlmsg_put (struct sk_buff*,int ,int ,int *,int ,int ) ;
 scalar_t__ nla_put_string (struct sk_buff*,int ,scalar_t__) ;
 scalar_t__ nla_put_u32 (struct sk_buff*,int ,int) ;
 int switch_fam ;

__attribute__((used)) static int
swconfig_dump_attr(struct swconfig_callback *cb, void *arg)
{
 struct switch_attr *op = arg;
 struct genl_info *info = cb->info;
 struct sk_buff *msg = cb->msg;
 int id = cb->args[0];
 void *hdr;

 hdr = genlmsg_put(msg, info->snd_portid, info->snd_seq, &switch_fam,
   NLM_F_MULTI, SWITCH_CMD_NEW_ATTR);
 if (IS_ERR(hdr))
  return -1;

 if (nla_put_u32(msg, SWITCH_ATTR_OP_ID, id))
  goto nla_put_failure;
 if (nla_put_u32(msg, SWITCH_ATTR_OP_TYPE, op->type))
  goto nla_put_failure;
 if (nla_put_string(msg, SWITCH_ATTR_OP_NAME, op->name))
  goto nla_put_failure;
 if (op->description)
  if (nla_put_string(msg, SWITCH_ATTR_OP_DESCRIPTION,
   op->description))
   goto nla_put_failure;

 genlmsg_end(msg, hdr);
 return msg->len;
nla_put_failure:
 genlmsg_cancel(msg, hdr);
 return -EMSGSIZE;
}
