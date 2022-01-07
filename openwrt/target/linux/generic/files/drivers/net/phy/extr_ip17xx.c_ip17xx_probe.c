
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct switch_dev {int name; int * ops; int ports; int cpu_port; int vlans; } ;
struct TYPE_4__ {scalar_t__ addr; int dev; int bus; } ;
struct phy_device {TYPE_2__ mdio; struct ip17xx_state* priv; } ;
struct ip17xx_state {TYPE_1__* regs; int mii_bus; struct switch_dev dev; } ;
struct TYPE_3__ {int NAME; int NUM_PORTS; int CPU_PORT; } ;


 int ENODEV ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int MAX_VLANS ;
 int dev_name (int *) ;
 int get_model (struct ip17xx_state*) ;
 int ip17xx_ops ;
 int kfree (struct ip17xx_state*) ;
 struct ip17xx_state* kzalloc (int,int ) ;
 int pr_info (char*,int ,int ) ;

__attribute__((used)) static int ip17xx_probe(struct phy_device *pdev)
{
 struct ip17xx_state *state;
 struct switch_dev *dev;
 int err;


 if (pdev->mdio.addr != 0)
  return -ENODEV;

 state = kzalloc(sizeof(*state), GFP_KERNEL);
 if (!state)
  return -ENOMEM;

 dev = &state->dev;

 pdev->priv = state;
 state->mii_bus = pdev->mdio.bus;

 err = get_model(state);
 if (err < 0)
  goto error;

 dev->vlans = MAX_VLANS;
 dev->cpu_port = state->regs->CPU_PORT;
 dev->ports = state->regs->NUM_PORTS;
 dev->name = state->regs->NAME;
 dev->ops = &ip17xx_ops;

 pr_info("IP17xx: Found %s at %s\n", dev->name, dev_name(&pdev->mdio.dev));
 return 0;

error:
 kfree(state);
 return err;
}
