
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int dhcp; void** dns; void** sn; int ip; int gw; int mac; } ;
typedef TYPE_1__ wiz_NetInfo ;


 int _DHCP_ ;
 void** _DNS_ ;
 void** _SUBN_ ;
 int getGAR (int ) ;
 int getSHAR (int ) ;
 int getSIPR (int ) ;
 int getSUBR (void**) ;

void wizchip_getnetinfo(wiz_NetInfo* pnetinfo)
{
   getSHAR(pnetinfo->mac);
   getGAR(pnetinfo->gw);
   getSUBR(pnetinfo->sn);
   getSIPR(pnetinfo->ip);






   pnetinfo->dns[0]= _DNS_[0];
   pnetinfo->dns[1]= _DNS_[1];
   pnetinfo->dns[2]= _DNS_[2];
   pnetinfo->dns[3]= _DNS_[3];
   pnetinfo->dhcp = _DHCP_;
}
