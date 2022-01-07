
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;


 int ARRAY_SIZE (struct net_device**) ;
 int ASSERT (int,char*,int) ;
 int IFX_REG_W32_MASK (int,int ,int ) ;
 int MBOX_IGU1_IER ;
 struct net_device** g_net_dev ;
 int netif_wake_queue (struct net_device*) ;

__attribute__((used)) static void ptm_tx_timeout(struct net_device *dev)
{
    int ndev;

    for ( ndev = 0; ndev < ARRAY_SIZE(g_net_dev) && g_net_dev[ndev] != dev; ndev++ );
    ASSERT(ndev >= 0 && ndev < ARRAY_SIZE(g_net_dev), "ndev = %d (wrong value)", ndev);


    IFX_REG_W32_MASK(1 << (ndev + 16), 0, MBOX_IGU1_IER);


    netif_wake_queue(dev);

    return;
}
