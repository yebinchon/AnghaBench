
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int s; int i; } ;
struct switch_val {TYPE_1__ value; struct switch_attr* attr; } ;
struct switch_attr {int type; } ;
struct nl_msg {int dummy; } ;


 int NLA_PUT_STRING (struct nl_msg*,int ,int ) ;
 int NLA_PUT_U32 (struct nl_msg*,int ,int ) ;
 int SWITCH_ATTR_OP_VALUE_INT ;
 int SWITCH_ATTR_OP_VALUE_STR ;





 scalar_t__ send_attr (struct nl_msg*,void*) ;
 int send_attr_link (struct nl_msg*,struct switch_val*) ;
 int send_attr_ports (struct nl_msg*,struct switch_val*) ;

__attribute__((used)) static int
send_attr_val(struct nl_msg *msg, void *arg)
{
 struct switch_val *val = arg;
 struct switch_attr *attr = val->attr;

 if (send_attr(msg, arg))
  goto nla_put_failure;

 switch(attr->type) {
 case 130:
  break;
 case 132:
  NLA_PUT_U32(msg, SWITCH_ATTR_OP_VALUE_INT, val->value.i);
  break;
 case 128:
  if (!val->value.s)
   goto nla_put_failure;
  NLA_PUT_STRING(msg, SWITCH_ATTR_OP_VALUE_STR, val->value.s);
  break;
 case 129:
  if (send_attr_ports(msg, val) < 0)
   goto nla_put_failure;
  break;
 case 131:
  if (send_attr_link(msg, val))
   goto nla_put_failure;
  break;
 default:
  goto nla_put_failure;
 }
 return 0;

nla_put_failure:
 return -1;
}
