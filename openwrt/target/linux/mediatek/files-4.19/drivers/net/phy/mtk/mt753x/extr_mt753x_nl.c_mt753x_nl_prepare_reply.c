
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct sk_buff {int dummy; } ;
struct genl_info {int snd_seq; int snd_portid; } ;


 int EINVAL ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int NLMSG_GOODSIZE ;
 struct sk_buff* genlmsg_new (int ,int ) ;
 void* genlmsg_put (struct sk_buff*,int ,int ,int *,int ,int ) ;
 int mt753x_nl_family ;
 int nlmsg_free (struct sk_buff*) ;

__attribute__((used)) static int mt753x_nl_prepare_reply(struct genl_info *info, u8 cmd,
       struct sk_buff **skbp)
{
 struct sk_buff *msg;
 void *reply;

 if (!info)
  return -EINVAL;

 msg = genlmsg_new(NLMSG_GOODSIZE, GFP_KERNEL);
 if (!msg)
  return -ENOMEM;


 reply = genlmsg_put(msg, info->snd_portid, info->snd_seq,
       &mt753x_nl_family, 0, cmd);
 if (!reply) {
  nlmsg_free(msg);
  return -EINVAL;
 }

 *skbp = msg;
 return 0;
}
