
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct phy_device {struct net_device* attached_dev; struct ip17xx_state* priv; } ;
struct net_device {int dummy; } ;
struct ip17xx_state {int registered; int dev; } ;


 int ip17xx_reset (int *) ;
 int register_switch (int *,struct net_device*) ;

__attribute__((used)) static int ip17xx_config_init(struct phy_device *pdev)
{
 struct ip17xx_state *state = pdev->priv;
 struct net_device *dev = pdev->attached_dev;
 int err;

 err = register_switch(&state->dev, dev);
 if (err < 0)
  return err;

 state->registered = 1;
 ip17xx_reset(&state->dev);
 return 0;
}
