
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef void* u16 ;
struct TYPE_3__ {int i; } ;
struct switch_val {TYPE_1__ value; } ;
struct switch_dev {int dummy; } ;
struct switch_attr {int dummy; } ;
struct TYPE_4__ {void* m; } ;
struct ip17xx_state {TYPE_2__ proc_mii; } ;


 struct ip17xx_state* get_state (struct switch_dev*) ;

__attribute__((used)) static int ip17xx_set_reg(struct switch_dev *dev, const struct switch_attr *attr, struct switch_val *val)
{
 struct ip17xx_state *state = get_state(dev);
 int new_reg = val->value.i;

 if (new_reg < 0 || new_reg > 31)
  state->proc_mii.m = (u16)-1;
 else
  state->proc_mii.m = (u16)new_reg;
 return 0;
}
