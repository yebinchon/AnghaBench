
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;


 int MR_RST ;
 int getGAR (int *) ;
 int getMR () ;
 int getSHAR (int *) ;
 int getSIPR (int *) ;
 int getSUBR (int *) ;
 int setGAR (int *) ;
 int setMR (int ) ;
 int setSHAR (int *) ;
 int setSIPR (int *) ;
 int setSUBR (int *) ;

void wizchip_sw_reset(void)
{
   uint8_t gw[4], sn[4], sip[4];
   uint8_t mac[6];
   getSHAR(mac);
   getGAR(gw); getSUBR(sn); getSIPR(sip);
   setMR(MR_RST);
   getMR();
   setSHAR(mac);
   setGAR(gw);
   setSUBR(sn);
   setSIPR(sip);
}
