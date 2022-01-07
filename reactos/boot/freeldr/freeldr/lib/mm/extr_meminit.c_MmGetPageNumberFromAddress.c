
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ULONG_PTR ;
typedef scalar_t__ PVOID ;
typedef int PFN_NUMBER ;


 int MM_PAGE_SIZE ;

PFN_NUMBER MmGetPageNumberFromAddress(PVOID Address)
{
    return ((ULONG_PTR)Address) / MM_PAGE_SIZE;
}
