
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct port_cell_info {int dummy; } ;


 int ARRAY_SIZE (int *) ;
 int * g_net_dev ;
 int g_showtime ;
 int netif_carrier_on (int ) ;
 int printk (char*) ;

__attribute__((used)) static int ptm_showtime_enter(struct port_cell_info *port_cell, void *xdata_addr)
{
    int i;

    g_showtime = 1;

    for ( i = 0; i < ARRAY_SIZE(g_net_dev); i++ )
        netif_carrier_on(g_net_dev[i]);

    printk("enter showtime\n");

    return 0;
}
