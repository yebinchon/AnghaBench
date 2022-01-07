
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int wiz_NetTimeout ;
typedef int wiz_NetInfo ;
typedef int netmode_type ;
typedef int int8_t ;
typedef int ctlnetwork_type ;
 int wizchip_getnetinfo (int *) ;
 int wizchip_getnetmode () ;
 int wizchip_gettimeout (int *) ;
 int wizchip_setnetinfo (int *) ;
 int wizchip_setnetmode (int ) ;
 int wizchip_settimeout (int *) ;

int8_t ctlnetwork(ctlnetwork_type cntype, void* arg)
{

   switch(cntype)
   {
      case 130:
         wizchip_setnetinfo((wiz_NetInfo*)arg);
         break;
      case 133:
         wizchip_getnetinfo((wiz_NetInfo*)arg);
         break;
      case 129:
         return wizchip_setnetmode(*(netmode_type*)arg);
      case 132:
         *(netmode_type*)arg = wizchip_getnetmode();
         break;
      case 128:
         wizchip_settimeout((wiz_NetTimeout*)arg);
         break;
      case 131:
         wizchip_gettimeout((wiz_NetTimeout*)arg);
         break;
      default:
         return -1;
   }
   return 0;
}
