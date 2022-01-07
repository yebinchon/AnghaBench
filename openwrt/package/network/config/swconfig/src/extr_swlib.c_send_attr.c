
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct switch_val {int port_vlan; struct switch_attr* attr; } ;
struct switch_attr {int atype; int id; TYPE_1__* dev; } ;
struct nl_msg {int dummy; } ;
struct TYPE_2__ {int id; } ;


 int NLA_PUT_U32 (struct nl_msg*,int ,int ) ;
 int SWITCH_ATTR_ID ;
 int SWITCH_ATTR_OP_ID ;
 int SWITCH_ATTR_OP_PORT ;
 int SWITCH_ATTR_OP_VLAN ;



__attribute__((used)) static int
send_attr(struct nl_msg *msg, void *arg)
{
 struct switch_val *val = arg;
 struct switch_attr *attr = val->attr;

 NLA_PUT_U32(msg, SWITCH_ATTR_ID, attr->dev->id);
 NLA_PUT_U32(msg, SWITCH_ATTR_OP_ID, attr->id);
 switch(attr->atype) {
 case 129:
  NLA_PUT_U32(msg, SWITCH_ATTR_OP_PORT, val->port_vlan);
  break;
 case 128:
  NLA_PUT_U32(msg, SWITCH_ATTR_OP_VLAN, val->port_vlan);
  break;
 default:
  break;
 }

 return 0;

nla_put_failure:
 return -1;
}
