
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int i; } ;
struct switch_val {int port_vlan; TYPE_2__ value; } ;
struct switch_dev {int vlans; } ;
struct switch_attr {int dummy; } ;
struct mvsw61xx_state {TYPE_1__* vlans; } ;
struct TYPE_3__ {scalar_t__ port_based; } ;


 int EINVAL ;
 struct mvsw61xx_state* get_state (struct switch_dev*) ;

__attribute__((used)) static int mvsw61xx_get_vlan_port_based(struct switch_dev *dev,
  const struct switch_attr *attr, struct switch_val *val)
{
 struct mvsw61xx_state *state = get_state(dev);
 int vno = val->port_vlan;

 if (vno <= 0 || vno >= dev->vlans)
  return -EINVAL;

 if (state->vlans[vno].port_based)
  val->value.i = 1;
 else
  val->value.i = 0;

 return 0;
}
