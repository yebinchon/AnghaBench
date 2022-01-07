
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dummy; } ;
struct net_device {int dummy; } ;
struct fe_priv {int pending_work; int hw_stats; int rx_napi; } ;


 int cancel_work_sync (int *) ;
 int free_netdev (struct net_device*) ;
 int kfree (int ) ;
 struct fe_priv* netdev_priv (struct net_device*) ;
 int netif_napi_del (int *) ;
 struct net_device* platform_get_drvdata (struct platform_device*) ;
 int platform_set_drvdata (struct platform_device*,int *) ;
 int unregister_netdev (struct net_device*) ;

__attribute__((used)) static int fe_remove(struct platform_device *pdev)
{
 struct net_device *dev = platform_get_drvdata(pdev);
 struct fe_priv *priv = netdev_priv(dev);

 netif_napi_del(&priv->rx_napi);
 kfree(priv->hw_stats);

 cancel_work_sync(&priv->pending_work);

 unregister_netdev(dev);
 free_netdev(dev);
 platform_set_drvdata(pdev, ((void*)0));

 return 0;
}
