
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned long HWREG (unsigned long) ;
 int UtilsDelay (int) ;

unsigned long PRCMHIBRegRead(unsigned long ulRegAddr)
{
  unsigned long ulValue;




  ulValue = HWREG(ulRegAddr);




  UtilsDelay((80*200)/3);




  return ulValue;
}
