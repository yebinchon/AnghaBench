
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int netmode_type ;
typedef int int8_t ;


 int NM_FORCEARP ;
 int NM_PINGBLOCK ;
 int NM_PPPOE ;
 int NM_WAKEONLAN ;
 int getMR () ;
 int setMR (int ) ;

int8_t wizchip_setnetmode(netmode_type netmode)
{
   uint8_t tmp = 0;

   if(netmode & ~(NM_WAKEONLAN | NM_PPPOE | NM_PINGBLOCK)) return -1;



   tmp = getMR();
   tmp |= (uint8_t)netmode;
   setMR(tmp);
   return 0;
}
