
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u16 ;
struct switch_dev {int ports; int vlans; } ;
struct mvsw61xx_state {int mirror_rx; int source_port; int monitor_port; int mirror_tx; TYPE_1__* ports; scalar_t__ vlan_enabled; int registered; } ;
struct TYPE_2__ {int mask; int qmode; int pvid; int fdb; } ;


 int CONTROL1 ;
 int CONTROL2 ;
 int EINVAL ;
 int MONITOR_CTRL ;
 int MV_8021Q_MODE_DISABLE ;
 int MV_8021Q_MODE_MASK ;
 int MV_8021Q_MODE_SHIFT ;
 int MV_8021Q_VLAN_ONLY ;
 int MV_FDB_HI_MASK ;
 int MV_FDB_HI_SHIFT ;
 int MV_FDB_LO_SHIFT ;
 int MV_GLOBAL2REG (int ) ;
 int MV_GLOBALREG (int ) ;
 int MV_MIRROR_RX_DEST_MASK ;
 int MV_MIRROR_RX_DEST_SHIFT ;
 int MV_MIRROR_RX_SRC_MASK ;
 int MV_MIRROR_RX_SRC_SHIFT ;
 int MV_MIRROR_TX_DEST_MASK ;
 int MV_MIRROR_TX_DEST_SHIFT ;
 int MV_MIRROR_TX_SRC_MASK ;
 int MV_MIRROR_TX_SRC_SHIFT ;
 int MV_PORTREG (int ,int) ;
 int MV_PVID_MASK ;
 int SDET_POLARITY ;
 int VLANID ;
 int VLANMAP ;
 struct mvsw61xx_state* get_state (struct switch_dev*) ;
 int mvsw61xx_vlan_port_config (struct switch_dev*,int) ;
 int mvsw61xx_vtu_program (struct switch_dev*) ;
 int sr16 (struct switch_dev*,int ) ;
 int sw16 (struct switch_dev*,int ,int) ;

__attribute__((used)) static int mvsw61xx_update_state(struct switch_dev *dev)
{
 struct mvsw61xx_state *state = get_state(dev);
 int i;
 u16 reg;

 if (!state->registered)
  return -EINVAL;
 reg = sr16(dev, MV_GLOBAL2REG(SDET_POLARITY));

 if (state->vlan_enabled)
  reg |= MV_8021Q_VLAN_ONLY;
 else
  reg &= ~MV_8021Q_VLAN_ONLY;

 sw16(dev, MV_GLOBAL2REG(SDET_POLARITY), reg);
 for (i = 0; i < dev->ports; i++) {
  state->ports[i].mask = 0;
  state->ports[i].qmode = MV_8021Q_MODE_DISABLE;
 }

 for (i = 0; i < dev->vlans; i++)
  mvsw61xx_vlan_port_config(dev, i);

 for (i = 0; i < dev->ports; i++) {
  reg = sr16(dev, MV_PORTREG(VLANID, i)) & ~MV_PVID_MASK;
  reg |= state->ports[i].pvid;
  sw16(dev, MV_PORTREG(VLANID, i), reg);

  state->ports[i].mask &= ~(1 << i);


  reg = sr16(dev, MV_PORTREG(CONTROL1, i)) & ~MV_FDB_HI_MASK;
  reg |= (state->ports[i].fdb >> MV_FDB_HI_SHIFT) &
   MV_FDB_HI_MASK;
  sw16(dev, MV_PORTREG(CONTROL1, i), reg);

  reg = ((state->ports[i].fdb & 0xf) << MV_FDB_LO_SHIFT) |
   state->ports[i].mask;
  sw16(dev, MV_PORTREG(VLANMAP, i), reg);

  reg = sr16(dev, MV_PORTREG(CONTROL2, i)) &
   ~MV_8021Q_MODE_MASK;
  reg |= state->ports[i].qmode << MV_8021Q_MODE_SHIFT;
  sw16(dev, MV_PORTREG(CONTROL2, i), reg);
 }

 mvsw61xx_vtu_program(dev);



 for (i = 0; i < dev->ports; i++) {
  reg = sr16(dev, MV_PORTREG(CONTROL2, i));
  reg &= ~(MV_MIRROR_RX_SRC_MASK | MV_MIRROR_TX_SRC_MASK);
  sw16(dev, MV_PORTREG(CONTROL2, i), reg);
 }
 reg = sr16(dev, MV_GLOBALREG(MONITOR_CTRL));
 reg |= MV_MIRROR_RX_DEST_MASK | MV_MIRROR_TX_DEST_MASK;
 sw16(dev, MV_GLOBALREG(MONITOR_CTRL), reg);


 if (state->mirror_rx) {

  reg = sr16(dev, MV_PORTREG(CONTROL2, state->source_port)) & ~MV_MIRROR_RX_SRC_MASK;
  reg |= state->mirror_rx << MV_MIRROR_RX_SRC_SHIFT;
  sw16(dev, MV_PORTREG(CONTROL2, state->source_port), reg);

  reg = sr16(dev, MV_GLOBALREG(MONITOR_CTRL)) & ~MV_MIRROR_RX_DEST_MASK;
  reg |= state->monitor_port << MV_MIRROR_RX_DEST_SHIFT;
  sw16(dev, MV_GLOBALREG(MONITOR_CTRL), reg);
 }

 if (state->mirror_tx) {

  reg = sr16(dev, MV_PORTREG(CONTROL2, state->source_port)) & ~MV_MIRROR_TX_SRC_MASK;
  reg |= state->mirror_tx << MV_MIRROR_TX_SRC_SHIFT;
  sw16(dev, MV_PORTREG(CONTROL2, state->source_port), reg);

  reg = sr16(dev, MV_GLOBALREG(MONITOR_CTRL)) & ~MV_MIRROR_TX_DEST_MASK;
  reg |= state->monitor_port << MV_MIRROR_TX_DEST_SHIFT;
  sw16(dev, MV_GLOBALREG(MONITOR_CTRL), reg);
 }

 return 0;
}
