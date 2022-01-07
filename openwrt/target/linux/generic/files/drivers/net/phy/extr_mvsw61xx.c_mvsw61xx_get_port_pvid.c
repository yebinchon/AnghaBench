
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct switch_dev {int dummy; } ;
struct mvsw61xx_state {TYPE_1__* ports; } ;
struct TYPE_2__ {int pvid; } ;


 struct mvsw61xx_state* get_state (struct switch_dev*) ;

__attribute__((used)) static int
mvsw61xx_get_port_pvid(struct switch_dev *dev, int port, int *val)
{
 struct mvsw61xx_state *state = get_state(dev);

 *val = state->ports[port].pvid;

 return 0;
}
