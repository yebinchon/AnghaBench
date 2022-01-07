
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ ULONG_PTR ;
struct TYPE_5__ {int Flink; } ;
struct TYPE_4__ {TYPE_2__ ListEntry; int SectionName; } ;
typedef TYPE_1__* PINI_SECTION ;
typedef int PCSTR ;
typedef int BOOLEAN ;


 TYPE_1__* CONTAINING_RECORD (int ,int ,int ) ;
 int FALSE ;
 int INI_SECTION ;
 TYPE_2__ IniFileSectionListHead ;
 int ListEntry ;
 int TRACE (char*,...) ;
 int TRUE ;
 scalar_t__ _stricmp (int ,int ) ;

BOOLEAN IniOpenSection(PCSTR SectionName, ULONG_PTR* SectionId)
{
    PINI_SECTION Section;

    TRACE("IniOpenSection() SectionName = %s\n", SectionName);


    Section = CONTAINING_RECORD(IniFileSectionListHead.Flink, INI_SECTION, ListEntry);
    while (&Section->ListEntry != &IniFileSectionListHead)
    {

        if (_stricmp(SectionName, Section->SectionName) == 0)
        {

            if (SectionId)
                *SectionId = (ULONG_PTR)Section;
            TRACE("IniOpenSection() Found it! SectionId = 0x%x\n", SectionId);
            return TRUE;
        }


        Section = CONTAINING_RECORD(Section->ListEntry.Flink, INI_SECTION, ListEntry);
    }

    TRACE("IniOpenSection() Section not found.\n");

    return FALSE;
}
