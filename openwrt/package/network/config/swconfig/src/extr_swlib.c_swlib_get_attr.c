
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct switch_val {int err; struct switch_attr* attr; scalar_t__ len; int value; } ;
struct switch_dev {int dummy; } ;
struct switch_attr {int atype; } ;


 int EINVAL ;
 int SWITCH_CMD_GET_GLOBAL ;
 int SWITCH_CMD_GET_PORT ;
 int SWITCH_CMD_GET_VLAN ;



 int memset (int *,int ,int) ;
 int send_attr ;
 int store_val ;
 int swlib_call (int,int ,int ,struct switch_val*) ;

int
swlib_get_attr(struct switch_dev *dev, struct switch_attr *attr, struct switch_val *val)
{
 int cmd;
 int err;

 switch(attr->atype) {
 case 130:
  cmd = SWITCH_CMD_GET_GLOBAL;
  break;
 case 129:
  cmd = SWITCH_CMD_GET_PORT;
  break;
 case 128:
  cmd = SWITCH_CMD_GET_VLAN;
  break;
 default:
  return -EINVAL;
 }

 memset(&val->value, 0, sizeof(val->value));
 val->len = 0;
 val->attr = attr;
 val->err = -EINVAL;
 err = swlib_call(cmd, store_val, send_attr, val);
 if (!err)
  err = val->err;

 return err;
}
