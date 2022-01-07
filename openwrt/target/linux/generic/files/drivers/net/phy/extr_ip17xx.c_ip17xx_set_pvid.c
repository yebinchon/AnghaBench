
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct switch_dev {int dummy; } ;
struct ip17xx_state {TYPE_2__* regs; TYPE_1__* ports; } ;
struct TYPE_4__ {int (* update_state ) (struct ip17xx_state*) ;} ;
struct TYPE_3__ {int pvid; } ;


 int EINVAL ;
 int MAX_VLANS ;
 struct ip17xx_state* get_state (struct switch_dev*) ;
 int stub1 (struct ip17xx_state*) ;

__attribute__((used)) static int ip17xx_set_pvid(struct switch_dev *dev, int port, int val)
{
 struct ip17xx_state *state = get_state(dev);

 if (val < 0 || val >= MAX_VLANS)
  return -EINVAL;

 state->ports[port].pvid = val;
 return state->regs->update_state(state);
}
