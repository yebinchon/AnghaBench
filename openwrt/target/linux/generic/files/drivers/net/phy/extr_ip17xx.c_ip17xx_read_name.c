
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int s; } ;
struct switch_val {TYPE_1__ value; } ;
struct switch_dev {int dummy; } ;
struct switch_attr {int dummy; } ;
struct ip17xx_state {TYPE_2__* regs; } ;
struct TYPE_4__ {int NAME; } ;


 struct ip17xx_state* get_state (struct switch_dev*) ;

__attribute__((used)) static int ip17xx_read_name(struct switch_dev *dev, const struct switch_attr *attr, struct switch_val *val)
{
 struct ip17xx_state *state = get_state(dev);
 val->value.s = state->regs->NAME;
 return 0;
}
