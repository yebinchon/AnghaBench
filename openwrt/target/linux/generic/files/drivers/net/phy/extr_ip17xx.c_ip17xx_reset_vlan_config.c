
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct ip17xx_state {int remove_tag; int add_tag; TYPE_2__* ports; TYPE_1__* vlans; TYPE_3__* regs; scalar_t__ vlan_enabled; } ;
struct TYPE_6__ {int NUM_PORTS; } ;
struct TYPE_5__ {scalar_t__ pvid; } ;
struct TYPE_4__ {int ports; int tag; } ;


 int MAX_PORTS ;
 int MAX_VLANS ;

__attribute__((used)) static void ip17xx_reset_vlan_config(struct ip17xx_state *state)
{
 int i;

 state->remove_tag = (state->vlan_enabled ? ((1<<state->regs->NUM_PORTS)-1) : 0x0000);
 state->add_tag = 0x0000;
 for (i = 0; i < MAX_VLANS; i++) {
  state->vlans[i].ports = 0x0000;
  state->vlans[i].tag = (i ? i : 16);
 }
 for (i = 0; i < MAX_PORTS; i++)
  state->ports[i].pvid = 0;
}
