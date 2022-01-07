
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct switch_dev {int dummy; } ;
struct ip17xx_state {TYPE_1__* regs; } ;
struct TYPE_2__ {int MII_REGISTER_EN_BIT; int MII_REGISTER_EN; } ;


 scalar_t__ REG_SUPP (int ) ;
 int getPhy (struct ip17xx_state*,int ) ;
 struct ip17xx_state* get_state (struct switch_dev*) ;
 int setPhy (struct ip17xx_state*,int ,int) ;

__attribute__((used)) static int ip17xx_apply(struct switch_dev *dev)
{
 struct ip17xx_state *state = get_state(dev);

 if (REG_SUPP(state->regs->MII_REGISTER_EN)) {
  int val = getPhy(state, state->regs->MII_REGISTER_EN);
  if (val < 0) {
   return val;
  }
  val |= (1<<state->regs->MII_REGISTER_EN_BIT);
  return setPhy(state, state->regs->MII_REGISTER_EN, val);
 }
 return 0;
}
