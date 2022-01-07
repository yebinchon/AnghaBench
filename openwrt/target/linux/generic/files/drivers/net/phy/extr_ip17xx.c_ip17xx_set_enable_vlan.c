
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int i; } ;
struct switch_val {TYPE_1__ value; } ;
struct switch_dev {int dummy; } ;
struct switch_attr {int dummy; } ;
struct ip17xx_state {int vlan_enabled; TYPE_2__* regs; } ;
struct TYPE_4__ {int (* set_vlan_mode ) (struct ip17xx_state*) ;} ;


 struct ip17xx_state* get_state (struct switch_dev*) ;
 int ip17xx_reset_vlan_config (struct ip17xx_state*) ;
 int stub1 (struct ip17xx_state*) ;

__attribute__((used)) static int ip17xx_set_enable_vlan(struct switch_dev *dev, const struct switch_attr *attr, struct switch_val *val)
{
 struct ip17xx_state *state = get_state(dev);
 int enable;

 enable = val->value.i;
 if (state->vlan_enabled == enable) {

  return 0;
 }
 state->vlan_enabled = enable;


 ip17xx_reset_vlan_config(state);

 return state->regs->set_vlan_mode(state);
}
