
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct port_cell_info {int dummy; } ;


 int ARRAY_SIZE (int *) ;
 int ASSERT (int ,char*) ;
 int IFX_REG_W32 (int,int ) ;
 int UTP_CFG ;
 int * g_net_dev ;
 int g_showtime ;
 void* g_xdata_addr ;
 int netif_carrier_on (int ) ;
 int printk (char*) ;

__attribute__((used)) static int ptm_showtime_enter(struct port_cell_info *port_cell, void *xdata_addr)
{
 int i;

 ASSERT(port_cell != ((void*)0), "port_cell is NULL");
 ASSERT(xdata_addr != ((void*)0), "xdata_addr is NULL");


 g_xdata_addr = xdata_addr;

 g_showtime = 1;

 for ( i = 0; i < ARRAY_SIZE(g_net_dev); i++ )
  netif_carrier_on(g_net_dev[i]);

 IFX_REG_W32(0x0F, UTP_CFG);





 printk("enter showtime\n");

 return 0;
}
