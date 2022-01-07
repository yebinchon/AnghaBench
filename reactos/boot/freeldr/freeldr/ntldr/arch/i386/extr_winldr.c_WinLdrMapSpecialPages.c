
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int Valid; int Write; void* PageFrameNumber; } ;
typedef int BOOLEAN ;


 TYPE_1__* HalPageTable ;
 int KIP0PCRADDRESS ;
 int KI_USER_SHARED_DATA ;
 int MM_PAGE_SHIFT ;
 void* PcrBasePage ;
 int TRACE (char*,TYPE_1__*) ;
 int TRUE ;
 int WinLdrpMapApic () ;

__attribute__((used)) static
BOOLEAN
WinLdrMapSpecialPages(void)
{
    TRACE("HalPageTable: 0x%X\n", HalPageTable);





    HalPageTable[(KI_USER_SHARED_DATA - 0xFFC00000) >> MM_PAGE_SHIFT].PageFrameNumber = PcrBasePage+1;
    HalPageTable[(KI_USER_SHARED_DATA - 0xFFC00000) >> MM_PAGE_SHIFT].Valid = 1;
    HalPageTable[(KI_USER_SHARED_DATA - 0xFFC00000) >> MM_PAGE_SHIFT].Write = 1;

    HalPageTable[(KIP0PCRADDRESS - 0xFFC00000) >> MM_PAGE_SHIFT].PageFrameNumber = PcrBasePage;
    HalPageTable[(KIP0PCRADDRESS - 0xFFC00000) >> MM_PAGE_SHIFT].Valid = 1;
    HalPageTable[(KIP0PCRADDRESS - 0xFFC00000) >> MM_PAGE_SHIFT].Write = 1;


    WinLdrpMapApic();





    return TRUE;
}
