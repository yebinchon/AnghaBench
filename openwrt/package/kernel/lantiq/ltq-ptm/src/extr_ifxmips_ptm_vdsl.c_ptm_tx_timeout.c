
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;


 int ASSERT (int,char*) ;
 int IFX_REG_W32_MASK (int,int ,int ) ;
 int MBOX_IGU1_IER ;
 struct net_device** g_net_dev ;
 int netif_wake_queue (struct net_device*) ;

__attribute__((used)) static void ptm_tx_timeout(struct net_device *dev)
{
    ASSERT(dev == g_net_dev[0], "incorrect device");


    IFX_REG_W32_MASK(1 << 17, 0, MBOX_IGU1_IER);


    netif_wake_queue(dev);

    return;
}
