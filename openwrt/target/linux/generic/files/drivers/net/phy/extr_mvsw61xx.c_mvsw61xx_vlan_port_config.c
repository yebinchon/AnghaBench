
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct switch_dev {int ports; } ;
struct mvsw61xx_state {TYPE_2__* ports; TYPE_1__* vlans; } ;
struct TYPE_4__ {int mask; int fdb; int qmode; int pvid; } ;
struct TYPE_3__ {int mask; int port_mode; scalar_t__ port_based; int vid; } ;


 int MV_8021Q_MODE_SECURE ;
 int MV_VTUCTL_EGRESS_TAGGED ;
 struct mvsw61xx_state* get_state (struct switch_dev*) ;

__attribute__((used)) static void mvsw61xx_vlan_port_config(struct switch_dev *dev, int vno)
{
 struct mvsw61xx_state *state = get_state(dev);
 int i, mode;

 for (i = 0; i < dev->ports; i++) {
  if (!(state->vlans[vno].mask & (1 << i)))
   continue;

  mode = (state->vlans[vno].port_mode >> (i * 4)) & 0xf;

  if(mode != MV_VTUCTL_EGRESS_TAGGED)
   state->ports[i].pvid = state->vlans[vno].vid;

  if (state->vlans[vno].port_based) {
   state->ports[i].mask |= state->vlans[vno].mask;
   state->ports[i].fdb = vno;
  }
  else
   state->ports[i].qmode = MV_8021Q_MODE_SECURE;
 }
}
