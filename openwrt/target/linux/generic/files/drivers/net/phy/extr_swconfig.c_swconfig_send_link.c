
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct switch_port_link {int eee; int speed; scalar_t__ rx_flow; scalar_t__ tx_flow; scalar_t__ aneg; scalar_t__ duplex; scalar_t__ link; } ;
struct sk_buff {int dummy; } ;
struct nlattr {int dummy; } ;
struct genl_info {int dummy; } ;


 int ADVERTISED_1000baseT_Full ;
 int ADVERTISED_100baseT_Full ;
 int SWITCH_LINK_FLAG_ANEG ;
 int SWITCH_LINK_FLAG_DUPLEX ;
 int SWITCH_LINK_FLAG_EEE_1000BASET ;
 int SWITCH_LINK_FLAG_EEE_100BASET ;
 int SWITCH_LINK_FLAG_LINK ;
 int SWITCH_LINK_FLAG_RX_FLOW ;
 int SWITCH_LINK_FLAG_TX_FLOW ;
 int SWITCH_LINK_SPEED ;
 int nla_nest_cancel (struct sk_buff*,struct nlattr*) ;
 int nla_nest_end (struct sk_buff*,struct nlattr*) ;
 struct nlattr* nla_nest_start (struct sk_buff*,int) ;
 scalar_t__ nla_put_flag (struct sk_buff*,int ) ;
 scalar_t__ nla_put_u32 (struct sk_buff*,int ,int ) ;

__attribute__((used)) static int
swconfig_send_link(struct sk_buff *msg, struct genl_info *info, int attr,
     const struct switch_port_link *link)
{
 struct nlattr *p = ((void*)0);
 int err = 0;

 p = nla_nest_start(msg, attr);
 if (link->link) {
  if (nla_put_flag(msg, SWITCH_LINK_FLAG_LINK))
   goto nla_put_failure;
 }
 if (link->duplex) {
  if (nla_put_flag(msg, SWITCH_LINK_FLAG_DUPLEX))
   goto nla_put_failure;
 }
 if (link->aneg) {
  if (nla_put_flag(msg, SWITCH_LINK_FLAG_ANEG))
   goto nla_put_failure;
 }
 if (link->tx_flow) {
  if (nla_put_flag(msg, SWITCH_LINK_FLAG_TX_FLOW))
   goto nla_put_failure;
 }
 if (link->rx_flow) {
  if (nla_put_flag(msg, SWITCH_LINK_FLAG_RX_FLOW))
   goto nla_put_failure;
 }
 if (nla_put_u32(msg, SWITCH_LINK_SPEED, link->speed))
  goto nla_put_failure;
 if (link->eee & ADVERTISED_100baseT_Full) {
  if (nla_put_flag(msg, SWITCH_LINK_FLAG_EEE_100BASET))
   goto nla_put_failure;
 }
 if (link->eee & ADVERTISED_1000baseT_Full) {
  if (nla_put_flag(msg, SWITCH_LINK_FLAG_EEE_1000BASET))
   goto nla_put_failure;
 }
 nla_nest_end(msg, p);

 return err;

nla_put_failure:
 nla_nest_cancel(msg, p);
 return -1;
}
