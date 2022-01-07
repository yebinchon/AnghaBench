
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ip17xx_state {TYPE_1__* regs; } ;
struct TYPE_2__ {int MODE_REG; int MODE_VAL; } ;


 scalar_t__ REG_SUPP (int ) ;
 int getPhy (struct ip17xx_state*,int ) ;
 int ip175c_update_state (struct ip17xx_state*) ;
 int setPhy (struct ip17xx_state*,int ,int ) ;

__attribute__((used)) static int ip175c_reset(struct ip17xx_state *state)
{
 int err;

 if (REG_SUPP(state->regs->MODE_REG)) {
  err = setPhy(state, state->regs->MODE_REG, state->regs->MODE_VAL);
  if (err < 0)
   return err;
  err = getPhy(state, state->regs->MODE_REG);
  if (err < 0)
   return err;
 }

 return ip175c_update_state(state);
}
