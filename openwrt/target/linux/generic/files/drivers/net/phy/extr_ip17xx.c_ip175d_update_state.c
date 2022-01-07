
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct ip17xx_state {int add_tag; int remove_tag; TYPE_2__* ports; TYPE_1__* vlans; int vlan_enabled; } ;
struct TYPE_4__ {size_t pvid; } ;
struct TYPE_3__ {unsigned int tag; unsigned int ports; } ;


 int EIO ;
 int ip_phy_write (struct ip17xx_state*,int,int,unsigned int) ;

__attribute__((used)) static int ip175d_update_state(struct ip17xx_state *state)
{
 unsigned int filter_mask = 0;
 unsigned int ports[16], add[16], rem[16];
 int i, j;
 int err = 0;

 for (i = 0; i < 16; i++) {
  ports[i] = 0;
  add[i] = 0;
  rem[i] = 0;
  if (!state->vlan_enabled) {
   err |= ip_phy_write(state, 22, 14+i, i+1);
   ports[i] = 0x3f;
   continue;
  }
  if (!state->vlans[i].tag) {

   err |= ip_phy_write(state, 22, 14+i, 0);
   continue;
  }
  filter_mask |= 1 << i;
  err |= ip_phy_write(state, 22, 14+i, state->vlans[i].tag);
  ports[i] = state->vlans[i].ports;
  for (j = 0; j < 6; j++) {
   if (ports[i] & (1 << j)) {
    if (state->add_tag & (1 << j))
     add[i] |= 1 << j;
    if (state->remove_tag & (1 << j))
     rem[i] |= 1 << j;
   }
  }
 }


 for (i = 0; i < 8; i++) {
  err |= ip_phy_write(state, 23, i, ports[2*i] | (ports[2*i+1] << 8));
  err |= ip_phy_write(state, 23, 8+i, add[2*i] | (add[2*i+1] << 8));
  err |= ip_phy_write(state, 23, 16+i, rem[2*i] | (rem[2*i+1] << 8));
 }
 err |= ip_phy_write(state, 22, 10, filter_mask);


 for (i = 0; i < 6; i++)
  err |= ip_phy_write(state, 22, 4+i, state->vlans[state->ports[i].pvid].tag);

 return (err ? -EIO : 0);
}
