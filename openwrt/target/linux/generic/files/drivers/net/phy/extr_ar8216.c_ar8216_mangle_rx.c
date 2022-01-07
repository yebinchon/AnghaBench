
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {unsigned char* data; } ;
struct net_device {struct ar8xxx_priv* phy_ptr; } ;
struct ar8xxx_priv {int vlan_tagged; int* vlan_id; size_t* pvid; int vlan; } ;


 int skb_pull (struct sk_buff*,int) ;

__attribute__((used)) static void
ar8216_mangle_rx(struct net_device *dev, struct sk_buff *skb)
{
 struct ar8xxx_priv *priv;
 unsigned char *buf;
 int port, vlan;

 priv = dev->phy_ptr;
 if (!priv)
  return;


 if (!priv->vlan)
  return;


 buf = skb->data;
 skb_pull(skb, 2);


 if ((buf[12 + 2] != 0x81) || (buf[13 + 2] != 0x00))
  return;

 port = buf[0] & 0x7;


 if (priv->vlan_tagged & (1 << port))
  return;


 vlan = priv->vlan_id[priv->pvid[port]];

 buf[14 + 2] &= 0xf0;
 buf[14 + 2] |= vlan >> 8;
 buf[15 + 2] = vlan & 0xff;
}
