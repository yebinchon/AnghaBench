
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int ULONG_PTR ;
typedef int ULONG ;
struct TYPE_2__ {int SectionItemCount; } ;
typedef TYPE_1__* PINI_SECTION ;


 int TRACE (char*,int ) ;

ULONG IniGetNumSectionItems(ULONG_PTR SectionId)
{
    PINI_SECTION Section = (PINI_SECTION)SectionId;

    TRACE("IniGetNumSectionItems() SectionId = 0x%x\n", SectionId);
    TRACE("IniGetNumSectionItems() Item count = %d\n", Section->SectionItemCount);

    return Section->SectionItemCount;
}
