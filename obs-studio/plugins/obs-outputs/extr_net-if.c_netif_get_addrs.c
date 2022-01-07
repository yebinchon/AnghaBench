
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct netif_saddr_data {int addrs; } ;


 int da_init (int ) ;
 int netif_get_addrs_nix (struct netif_saddr_data*) ;
 int netif_get_addrs_win32 (struct netif_saddr_data*) ;

void netif_get_addrs(struct netif_saddr_data *ifaddrs)
{
 da_init(ifaddrs->addrs);




 netif_get_addrs_nix(ifaddrs);

}
