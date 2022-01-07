
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int i; } ;
struct switch_val {TYPE_1__ value; } ;
struct switch_dev {int dummy; } ;
struct switch_attr {int dummy; } ;
struct ip17xx_state {int proc_mii; } ;


 int EINVAL ;
 scalar_t__ REG_SUPP (int ) ;
 int getPhy (struct ip17xx_state*,int ) ;
 struct ip17xx_state* get_state (struct switch_dev*) ;

__attribute__((used)) static int ip17xx_get_val(struct switch_dev *dev, const struct switch_attr *attr, struct switch_val *val)
{
 struct ip17xx_state *state = get_state(dev);
 int retval = -EINVAL;
 if (REG_SUPP(state->proc_mii))
  retval = getPhy(state, state->proc_mii);

 if (retval < 0) {
  return retval;
 } else {
  val->value.i = retval;
  return 0;
 }
}
