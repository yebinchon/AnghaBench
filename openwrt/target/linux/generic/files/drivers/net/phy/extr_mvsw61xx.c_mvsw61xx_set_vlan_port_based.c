
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int i; } ;
struct switch_val {int port_vlan; TYPE_1__ value; } ;
struct switch_dev {int vlans; } ;
struct switch_attr {int dummy; } ;
struct mvsw61xx_state {TYPE_2__* vlans; } ;
struct TYPE_4__ {int port_based; } ;


 int EINVAL ;
 struct mvsw61xx_state* get_state (struct switch_dev*) ;

__attribute__((used)) static int mvsw61xx_set_vlan_port_based(struct switch_dev *dev,
  const struct switch_attr *attr, struct switch_val *val)
{
 struct mvsw61xx_state *state = get_state(dev);
 int vno = val->port_vlan;

 if (vno <= 0 || vno >= dev->vlans)
  return -EINVAL;

 if (val->value.i == 1)
  state->vlans[vno].port_based = 1;
 else
  state->vlans[vno].port_based = 0;

 return 0;
}
