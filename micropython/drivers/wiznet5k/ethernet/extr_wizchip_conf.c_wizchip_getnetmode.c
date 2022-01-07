
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int netmode_type ;


 int getMR () ;

netmode_type wizchip_getnetmode(void)
{
   return (netmode_type) getMR();
}
