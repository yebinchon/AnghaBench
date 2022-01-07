
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int wiz_PhyConf ;
typedef int uint8_t ;
typedef int uint16_t ;
typedef int intr_kind ;
typedef int int8_t ;
typedef int ctlwizchip_type ;
struct TYPE_2__ {int * id; } ;
 TYPE_1__ WIZCHIP ;
 int _WIZCHIP_SOCK_NUM_ ;
 int getINTLEVEL () ;
 int setINTLEVEL (int ) ;
 int wizchip_clrinterrupt (int ) ;
 int wizchip_getinterrupt () ;
 int wizchip_getinterruptmask () ;
 int wizchip_init (int *,int *) ;
 int wizchip_setinterruptmask (int ) ;
 int wizchip_sw_reset () ;
 int wizphy_getphyconf (int *) ;
 int wizphy_getphylink () ;
 int wizphy_getphypmode () ;
 int wizphy_reset () ;
 int wizphy_setphyconf (int *) ;
 int wizphy_setphypmode (int ) ;

int8_t ctlwizchip(ctlwizchip_type cwtype, void* arg)
{
   uint8_t tmp = 0;
   uint8_t* ptmp[2] = {0,0};
   switch(cwtype)
   {
      case 132:
         wizchip_sw_reset();
         break;
      case 134:
         if(arg != 0)
         {
            ptmp[0] = (uint8_t*)arg;
            ptmp[1] = ptmp[0] + _WIZCHIP_SOCK_NUM_;
         }
         return wizchip_init(ptmp[0], ptmp[1]);
      case 143:
         wizchip_clrinterrupt(*((intr_kind*)arg));
         break;
      case 141:
        *((intr_kind*)arg) = wizchip_getinterrupt();
         break;
      case 131:
         wizchip_setinterruptmask(*((intr_kind*)arg));
         break;
      case 140:
         *((intr_kind*)arg) = wizchip_getinterruptmask();
         break;
      case 142:
         ((uint8_t*)arg)[0] = WIZCHIP.id[0];
         ((uint8_t*)arg)[1] = WIZCHIP.id[1];
         ((uint8_t*)arg)[2] = WIZCHIP.id[2];
         ((uint8_t*)arg)[3] = WIZCHIP.id[3];
         ((uint8_t*)arg)[4] = WIZCHIP.id[4];
         ((uint8_t*)arg)[5] = 0;
         break;
      case 136:
         tmp = wizphy_getphypmode();
         if((int8_t)tmp == -1) return -1;
         *(uint8_t*)arg = tmp;
         break;
      case 137:
         tmp = wizphy_getphylink();
         if((int8_t)tmp == -1) return -1;
         *(uint8_t*)arg = tmp;
         break;
      default:
         return -1;
   }
   return 0;
}
