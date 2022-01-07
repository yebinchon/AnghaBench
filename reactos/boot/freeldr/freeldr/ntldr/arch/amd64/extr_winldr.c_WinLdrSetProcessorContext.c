
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int VOID ;
typedef scalar_t__ ULONG64 ;
typedef scalar_t__ PVOID ;
typedef int KGDTENTRY ;


 int Amd64SetupGdt (scalar_t__,int) ;
 int Amd64SetupIdt (scalar_t__) ;
 scalar_t__ GdtIdt ;
 int KGDT64_SYS_TSS ;
 int KSEG0_BASE ;
 int MM_PAGE_SHIFT ;
 int NUM_GDT ;
 scalar_t__ PxeBase ;
 int TRACE (char*) ;
 int TssBasePage ;
 int __ltr (int ) ;
 int __writecr3 (scalar_t__) ;
 int __writeeflags (int ) ;
 int _disable () ;

VOID
WinLdrSetProcessorContext(void)
{
    TRACE("WinLdrSetProcessorContext\n");


    _disable();


    __writeeflags(0);


    __writecr3((ULONG64)PxeBase);


    GdtIdt = (PVOID)((ULONG64)GdtIdt + KSEG0_BASE);


    Amd64SetupGdt(GdtIdt, KSEG0_BASE | (TssBasePage << MM_PAGE_SHIFT));


    Amd64SetupIdt((PVOID)((ULONG64)GdtIdt + NUM_GDT * sizeof(KGDTENTRY)));





    __ltr(KGDT64_SYS_TSS);

    TRACE("leave WinLdrSetProcessorContext\n");
}
