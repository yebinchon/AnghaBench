
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned long HWREG ;



void
IntVTableBaseSet(unsigned long ulVtableBase)
{
    HWREG(NVIC_VTABLE) = ulVtableBase;
}
