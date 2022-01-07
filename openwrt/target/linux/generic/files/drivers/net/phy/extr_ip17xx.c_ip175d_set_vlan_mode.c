
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ip17xx_state {TYPE_1__* ports; scalar_t__ vlan_enabled; } ;
struct TYPE_2__ {scalar_t__ pvid; } ;


 int EIO ;
 int ip175d_update_state (struct ip17xx_state*) ;
 int ip_phy_write_masked (struct ip17xx_state*,int,int,int,int) ;

__attribute__((used)) static int ip175d_set_vlan_mode(struct ip17xx_state *state)
{
 int i;
 int err = 0;

 if (state->vlan_enabled) {


  err |= ip_phy_write_masked(state, 22, 0, 0x3fff, 0x003f);




  err |= ip_phy_write_masked(state, 22, 1, 0x0fff, 0x0c3f);


  err |= ip_phy_write_masked(state, 22, 2, 0x0fff, 0x0000);
 } else {

  err |= ip_phy_write_masked(state, 22, 0, 0xbfff, 0x8000);


  err |= ip_phy_write_masked(state, 22, 1, 0x0fff, 0x0c3f);
  err |= ip_phy_write_masked(state, 22, 2, 0x0fff, 0x0000);
 }


 for (i = 0; i < 6; i++)
  state->ports[i].pvid = 0;

 err |= ip175d_update_state(state);

 return (err ? -EIO : 0);
}
