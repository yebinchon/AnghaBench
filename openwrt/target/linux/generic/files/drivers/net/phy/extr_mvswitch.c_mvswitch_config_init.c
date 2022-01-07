
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct phy_device {int irq; void* advertising; void* supported; struct net_device* attached_dev; } ;
struct net_device {int features; int priv_flags; int eth_mangle_tx; int eth_mangle_rx; int name; int flags; struct mvswitch_priv* phy_ptr; } ;
struct mvswitch_priv {int* vlans; int orig_features; } ;


 void* ADVERTISED_100baseT_Full ;
 int ARRAY_SIZE (int*) ;
 int ASSOC ;
 int ATU_CTRL ;
 int CONTROL ;
 int CTRL ;
 int EINVAL ;
 int IFF_NO_IP_ALIGN ;
 int IFF_PROMISC ;
 int MV_ATUCTL_AGETIME (int ) ;
 int MV_ATUCTL_AGETIME_MIN ;
 int MV_ATUCTL_ATU_1K ;
 int MV_ATUCTL_NO_LEARN ;
 int MV_ATUCTL_RESET ;
 int MV_CPUPORT ;
 int MV_PORTASSOC_PORTS (int) ;
 int MV_PORTCTRL_ENABLED ;
 int MV_PORTCTRL_HEADER ;
 int MV_PORTCTRL_RXTR ;
 int MV_PORTCTRL_TXTR ;
 int MV_PORTREG (int ,int) ;
 int MV_PORTS ;
 int MV_PORTVLAN_ID (int) ;
 int MV_PORTVLAN_PORTS (int) ;
 int MV_SWITCHCTL_DROP ;
 int MV_SWITCHCTL_MSIZE ;
 int MV_SWITCHREG (int ) ;
 int MV_WANPORT ;
 int NETIF_F_HW_VLAN_CTAG_RX ;
 int NETIF_F_HW_VLAN_CTAG_TX ;
 int PHY_POLL ;
 int VLANMAP ;
 int msleep (int) ;
 int mvswitch_mangle_rx ;
 int mvswitch_mangle_tx ;
 int mvswitch_wait_mask (struct phy_device*,int ,int,int ) ;
 int printk (char*,int ) ;
 struct mvswitch_priv* to_mvsw (struct phy_device*) ;
 int w16 (struct phy_device*,int ,int) ;

__attribute__((used)) static int
mvswitch_config_init(struct phy_device *pdev)
{
 struct mvswitch_priv *priv = to_mvsw(pdev);
 struct net_device *dev = pdev->attached_dev;
 u8 vlmap = 0;
 int i;

 if (!dev)
  return -EINVAL;

 printk("%s: Marvell 88E6060 PHY driver attached.\n", dev->name);
 pdev->supported = ADVERTISED_100baseT_Full;
 pdev->advertising = ADVERTISED_100baseT_Full;
 dev->phy_ptr = priv;
 pdev->irq = PHY_POLL;





 for (i = 0; i < MV_PORTS; i++)
  priv->vlans[(i == MV_WANPORT ? 2 : 1)] |= (1 << i);


 for (i = 0; i < MV_PORTS; i++)
  w16(pdev, MV_PORTREG(CONTROL, i), 0x00);

 msleep(2);


 w16(pdev, MV_SWITCHREG(ATU_CTRL), MV_ATUCTL_RESET);

 i = mvswitch_wait_mask(pdev, MV_SWITCHREG(ATU_CTRL), MV_ATUCTL_RESET, 0);
 if (i < 0) {
  printk("%s: Timeout waiting for the switch to reset.\n", dev->name);
  return i;
 }


 w16(pdev, MV_SWITCHREG(ATU_CTRL),
  MV_ATUCTL_NO_LEARN |
  MV_ATUCTL_ATU_1K |
  MV_ATUCTL_AGETIME(MV_ATUCTL_AGETIME_MIN)
 );


 w16(pdev, MV_PORTREG(CONTROL, MV_CPUPORT),



  MV_PORTCTRL_RXTR |
  MV_PORTCTRL_TXTR |

  MV_PORTCTRL_ENABLED
 );

 msleep(2);
 for (i = 0; i < MV_PORTS; i++) {
  u8 pvid = 0;
  int j;

  vlmap = 0;


  for (j = 0; j < ARRAY_SIZE(priv->vlans); j++) {
   if (priv->vlans[j] & (1 << i)) {
    vlmap = priv->vlans[j];
    pvid = j;
   }
  }

  if (!vlmap)
   continue;


  vlmap |= (1 << MV_CPUPORT);


  vlmap &= ~(1 << i);


  w16(pdev, MV_PORTREG(VLANMAP, i),
   MV_PORTVLAN_PORTS(vlmap) |
   MV_PORTVLAN_ID(i)
  );


  w16(pdev, MV_PORTREG(CONTROL, i),
   MV_PORTCTRL_ENABLED
  );
 }

 w16(pdev, MV_PORTREG(VLANMAP, MV_CPUPORT),
  MV_PORTVLAN_ID(MV_CPUPORT)
 );


 for (i = 0; i <= MV_PORTS; i++) {
  w16(pdev, MV_PORTREG(ASSOC, i),
   MV_PORTASSOC_PORTS(1 << i)
  );
 }


 w16(pdev, MV_SWITCHREG(CTRL),
  MV_SWITCHCTL_MSIZE |
  MV_SWITCHCTL_DROP
 );

 dev->eth_mangle_rx = mvswitch_mangle_rx;
 dev->eth_mangle_tx = mvswitch_mangle_tx;
 priv->orig_features = dev->features;





 dev->features |= NETIF_F_HW_VLAN_CTAG_RX;


 return 0;
}
