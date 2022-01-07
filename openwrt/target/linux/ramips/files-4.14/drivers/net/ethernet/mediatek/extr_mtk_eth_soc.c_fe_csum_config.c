
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int features; } ;
struct fe_priv {int dummy; } ;


 int NETIF_F_IP_CSUM ;
 int NETIF_F_RXCSUM ;
 int fe_rxcsum_config (int) ;
 int fe_txcsum_config (int) ;
 struct net_device* priv_netdev (struct fe_priv*) ;

void fe_csum_config(struct fe_priv *priv)
{
 struct net_device *dev = priv_netdev(priv);

 fe_txcsum_config((dev->features & NETIF_F_IP_CSUM));
 fe_rxcsum_config((dev->features & NETIF_F_RXCSUM));
}
