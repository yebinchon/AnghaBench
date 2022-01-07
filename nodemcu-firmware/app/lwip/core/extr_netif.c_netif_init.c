
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ip_addr_t ;


 int IP4_ADDR (int *,int,int ,int ,int) ;
 int ip_input ;
 int loop_netif ;
 int netif_add (int *,int *,int *,int *,int *,int ,int ) ;
 int netif_loopif_init ;
 int netif_set_up (int *) ;
 int tcpip_input ;

void
netif_init(void)
{
}
