
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int paddr_t ;
typedef int ULONG ;
struct TYPE_3__ {int BaseAddress; int Length; int Type; } ;
typedef TYPE_1__* PBIOS_MEMORY_MAP ;


 int BiosMemoryUsable ;
 int GetPhys (int) ;
 int SetPhys (int,int) ;
 int mem_range_end ;
 int printf (char*,int) ;

ULONG PpcPrepGetMemoryMap( PBIOS_MEMORY_MAP BiosMemoryMap,
               ULONG MaxMemoryMapSize )
{

    paddr_t physAddr;
    register int oldStore = 0, newStore = 0, change = 0, oldmsr;

    __asm__("mfmsr %0\n" : "=r" (oldmsr));
    change = oldmsr & 0x6fff;
    __asm__("mtmsr %0\n" : : "r" (change));




    for (physAddr = 0x40000, change = newStore;
         (physAddr < 0x80000000) && (change == newStore);
         physAddr += 1 << 12)
    {
        oldStore = GetPhys(physAddr);
        newStore = (physAddr & 0x1000) ? 0x55aa55aa : 0xaa55aa55;
        SetPhys(physAddr, newStore);
        change = GetPhys(physAddr);
        SetPhys(physAddr, oldStore);
    }

    physAddr -= 0x1000;
    BiosMemoryMap[0].BaseAddress = 0x30000;
    BiosMemoryMap[0].Type = BiosMemoryUsable;
    BiosMemoryMap[0].Length = physAddr - BiosMemoryMap[0].BaseAddress;

    __asm__("mtmsr %0\n" : : "r" (oldmsr));

    mem_range_end = physAddr;

    printf("Actual RAM: %d Mb\n", physAddr >> 20);
    return 1;
}
