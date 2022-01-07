
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int DHCP_CHADDR ;
 int MR_RST ;
 int getMR () ;
 int setMR (int ) ;
 int setSHAR (int ) ;

void default_ip_conflict(void)
{

 setMR(MR_RST);
 getMR();
 setSHAR(DHCP_CHADDR);
}
