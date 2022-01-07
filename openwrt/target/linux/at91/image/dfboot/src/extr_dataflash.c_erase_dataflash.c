
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int * AT91PS_DataFlash ;


 int AT91F_DataFlashErase (int *) ;
 int * AT91F_DataflashSelect (int *,unsigned int*) ;
 int DataFlashInst ;

int erase_dataflash(unsigned long addr_dest)
{
 unsigned int AddrToWrite = addr_dest;
 AT91PS_DataFlash pFlash = &DataFlashInst;

 pFlash = AT91F_DataflashSelect (pFlash, &AddrToWrite);
 if (AddrToWrite == -1)
  return -1;

 return AT91F_DataFlashErase(pFlash);
}
