
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct net_device {int dummy; } ;
struct fe_priv {int msg_enable; } ;


 struct fe_priv* netdev_priv (struct net_device*) ;

__attribute__((used)) static void fe_set_msglevel(struct net_device *dev, u32 value)
{
 struct fe_priv *priv = netdev_priv(dev);

 priv->msg_enable = value;
}
