
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ ULONG_PTR ;
struct TYPE_4__ {int ListEntry; int SectionItemList; void* SectionName; } ;
typedef TYPE_1__* PINI_SECTION ;
typedef int PCSTR ;
typedef int INI_SECTION ;
typedef int CHAR ;
typedef int BOOLEAN ;


 int FALSE ;
 void* FrLdrTempAlloc (int,int ) ;
 int FrLdrTempFree (TYPE_1__*,int ) ;
 int IniFileSectionCount ;
 int IniFileSectionListHead ;
 int InitializeListHead (int *) ;
 int InsertHeadList (int *,int *) ;
 int RtlZeroMemory (TYPE_1__*,int) ;
 int TAG_INI_NAME ;
 int TAG_INI_SECTION ;
 int TRUE ;
 int strcpy (void*,int ) ;
 int strlen (int ) ;

BOOLEAN IniAddSection(PCSTR SectionName, ULONG_PTR* SectionId)
{
    PINI_SECTION Section;


    Section = FrLdrTempAlloc(sizeof(INI_SECTION), TAG_INI_SECTION);
    if (!Section)
    {
        return FALSE;
    }

    RtlZeroMemory(Section, sizeof(INI_SECTION));


    Section->SectionName = FrLdrTempAlloc(strlen(SectionName) + sizeof(CHAR), TAG_INI_NAME);
    if (!Section->SectionName)
    {
        FrLdrTempFree(Section, TAG_INI_SECTION);
        return FALSE;
    }


    strcpy(Section->SectionName, SectionName);
    InitializeListHead(&Section->SectionItemList);


    IniFileSectionCount++;
    InsertHeadList(&IniFileSectionListHead, &Section->ListEntry);

    *SectionId = (ULONG_PTR)Section;

    return TRUE;
}
