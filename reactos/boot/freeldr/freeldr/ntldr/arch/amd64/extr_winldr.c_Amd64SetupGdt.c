
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int VOID ;
typedef int ULONG64 ;
struct TYPE_2__ {int Limit; int Base; } ;
typedef int PVOID ;
typedef int* PULONG64 ;
typedef scalar_t__ PKGDTENTRY64 ;
typedef int KTSS ;
typedef int KGDTENTRY ;
typedef TYPE_1__ KDESCRIPTOR ;


 int I386_TSS ;
 int KGDT64_NULL ;
 int KGDT64_R0_CODE ;
 int KGDT64_R0_DATA ;
 int KGDT64_R3_CMCODE ;
 int KGDT64_R3_CMTEB ;
 int KGDT64_R3_CODE ;
 int KGDT64_R3_DATA ;
 int KGDT64_SYS_TSS ;
 scalar_t__ KiGetGdtEntry (int ,int ) ;
 int KiInitGdtEntry (scalar_t__,int ,int,int ,int ) ;
 int NUM_GDT ;
 int TRACE (char*,...) ;
 int __lgdt (int*) ;

__attribute__((used)) static
VOID
Amd64SetupGdt(PVOID GdtBase, ULONG64 TssBase)
{
    PKGDTENTRY64 Entry;
    KDESCRIPTOR GdtDesc;
    TRACE("Amd64SetupGdt(GdtBase = %p, TssBase = %p)\n", GdtBase, TssBase);


    Entry = KiGetGdtEntry(GdtBase, KGDT64_NULL);
    *(PULONG64)Entry = 0x0000000000000000ULL;


    Entry = KiGetGdtEntry(GdtBase, KGDT64_R0_CODE);
    *(PULONG64)Entry = 0x00209b0000000000ULL;


    Entry = KiGetGdtEntry(GdtBase, KGDT64_R0_DATA);
    *(PULONG64)Entry = 0x00cf93000000ffffULL;


    Entry = KiGetGdtEntry(GdtBase, KGDT64_R3_CMCODE);
    *(PULONG64)Entry = 0x00cffb000000ffffULL;


    Entry = KiGetGdtEntry(GdtBase, KGDT64_R3_DATA);
    *(PULONG64)Entry = 0x00cff3000000ffffULL;


    Entry = KiGetGdtEntry(GdtBase, KGDT64_R3_CODE);
    *(PULONG64)Entry = 0x0020fb0000000000ULL;


    Entry = KiGetGdtEntry(GdtBase, KGDT64_R3_CMTEB);
    *(PULONG64)Entry = 0xff40f3fd50003c00ULL;


    Entry = KiGetGdtEntry(GdtBase, KGDT64_SYS_TSS);
    KiInitGdtEntry(Entry, TssBase, sizeof(KTSS), I386_TSS, 0);


    GdtDesc.Base = GdtBase;
    GdtDesc.Limit = NUM_GDT * sizeof(KGDTENTRY) - 1;


    __lgdt(&GdtDesc.Limit);
    TRACE("Leave Amd64SetupGdt()\n");
}
