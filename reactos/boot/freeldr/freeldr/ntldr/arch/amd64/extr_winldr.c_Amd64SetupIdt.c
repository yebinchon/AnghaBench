
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int VOID ;
typedef int ULONG ;
struct TYPE_2__ {int Limit; int Base; } ;
typedef int PVOID ;
typedef int KIDTENTRY ;
typedef TYPE_1__ KDESCRIPTOR ;


 int NUM_IDT ;
 int TRACE (char*,...) ;
 int __lidt (int*) ;
 int __sidt (int*) ;
 int min (int,int) ;

__attribute__((used)) static
VOID
Amd64SetupIdt(PVOID IdtBase)
{
    KDESCRIPTOR IdtDesc, OldIdt;
    ULONG Size;
    TRACE("Amd64SetupIdt(IdtBase = %p)\n", IdtBase);


    __sidt(&OldIdt.Limit);


    Size = min(OldIdt.Limit + 1, NUM_IDT * sizeof(KIDTENTRY));



    IdtDesc.Base = IdtBase;
    IdtDesc.Limit = NUM_IDT * sizeof(KIDTENTRY) - 1;


    __lidt(&IdtDesc.Limit);
    TRACE("Leave Amd64SetupIdt()\n");
}
