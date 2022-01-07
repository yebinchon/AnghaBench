
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int i; } ;
struct switch_val {TYPE_1__ value; } ;
struct switch_dev {int dummy; } ;
struct switch_attr {int dummy; } ;
struct mvsw61xx_state {int mirror_rx; } ;


 struct mvsw61xx_state* get_state (struct switch_dev*) ;

__attribute__((used)) static int mvsw61xx_set_mirror_rx_enable(struct switch_dev *dev,
  const struct switch_attr *attr, struct switch_val *val)
{
 struct mvsw61xx_state *state = get_state(dev);

 state->mirror_rx = val->value.i;

 return 0;
}
