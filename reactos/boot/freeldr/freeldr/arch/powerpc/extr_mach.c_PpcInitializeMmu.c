
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int VOID ;


 int MmuDbgInit (int ,int) ;
 int MmuInit () ;
 int MmuSetMemorySize (int ) ;
 int mem_range_end ;
 int mmu_initialized ;

VOID PpcInitializeMmu()
{
    if(!mmu_initialized)
    {
    MmuInit();
    MmuDbgInit(0, 0x800003f8);
        MmuSetMemorySize(mem_range_end);

    mmu_initialized = 1;
    }
}
