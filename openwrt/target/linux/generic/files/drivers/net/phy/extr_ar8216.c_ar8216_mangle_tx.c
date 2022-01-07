
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;
struct net_device {struct ar8xxx_priv* phy_ptr; } ;
struct ar8xxx_priv {int vlan; } ;


 int GFP_ATOMIC ;
 int dev_kfree_skb_any (struct sk_buff*) ;
 scalar_t__ pskb_expand_head (struct sk_buff*,int,int ,int ) ;
 int skb_headroom (struct sk_buff*) ;
 unsigned char* skb_push (struct sk_buff*,int) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static struct sk_buff *
ar8216_mangle_tx(struct net_device *dev, struct sk_buff *skb)
{
 struct ar8xxx_priv *priv = dev->phy_ptr;
 unsigned char *buf;

 if (unlikely(!priv))
  goto error;

 if (!priv->vlan)
  goto send;

 if (unlikely(skb_headroom(skb) < 2)) {
  if (pskb_expand_head(skb, 2, 0, GFP_ATOMIC) < 0)
   goto error;
 }

 buf = skb_push(skb, 2);
 buf[0] = 0x10;
 buf[1] = 0x80;

send:
 return skb;

error:
 dev_kfree_skb_any(skb);
 return ((void*)0);
}
