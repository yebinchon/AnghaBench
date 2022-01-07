
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ vlddes; } ;


 int ARRAY_SIZE (int ) ;
 int ASSERT (int,char*,int) ;
 TYPE_1__* WRX_DMA_CHANNEL_CONFIG (int) ;
 int g_net_dev ;
 scalar_t__ mailbox_rx_irq_handler (int) ;

__attribute__((used)) static unsigned int ptm_poll(int ndev, unsigned int work_to_do)
{
    unsigned int work_done = 0;

    ASSERT(ndev >= 0 && ndev < ARRAY_SIZE(g_net_dev), "ndev = %d (wrong value)", ndev);

    while ( work_done < work_to_do && WRX_DMA_CHANNEL_CONFIG(ndev)->vlddes > 0 ) {
        if ( mailbox_rx_irq_handler(ndev) < 0 )
            break;

        work_done++;
    }

    return work_done;
}
