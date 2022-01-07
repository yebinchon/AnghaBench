
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int dhcp; int * dns; int * sn; int ip; int gw; int mac; } ;
typedef TYPE_1__ wiz_NetInfo ;


 int _DHCP_ ;
 int * _DNS_ ;
 int * _SUBN_ ;
 int setGAR (int ) ;
 int setSHAR (int ) ;
 int setSIPR (int ) ;
 int setSUBR (int *) ;

void wizchip_setnetinfo(wiz_NetInfo* pnetinfo)
{
   setSHAR(pnetinfo->mac);
   setGAR(pnetinfo->gw);
   setSUBR(pnetinfo->sn);
   setSIPR(pnetinfo->ip);






   _DNS_[0] = pnetinfo->dns[0];
   _DNS_[1] = pnetinfo->dns[1];
   _DNS_[2] = pnetinfo->dns[2];
   _DNS_[3] = pnetinfo->dns[3];
   _DHCP_ = pnetinfo->dhcp;
}
