
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int ULONG_PTR ;
struct TYPE_7__ {int SectionItemList; int SectionItemCount; } ;
struct TYPE_6__ {int ListEntry; struct TYPE_6__* ItemValue; struct TYPE_6__* ItemName; } ;
typedef TYPE_1__* PINI_SECTION_ITEM ;
typedef TYPE_2__* PINI_SECTION ;
typedef int PCSTR ;
typedef int INI_SECTION_ITEM ;
typedef int BOOLEAN ;


 int FALSE ;
 void* FrLdrTempAlloc (int,int ) ;
 int FrLdrTempFree (TYPE_1__*,int ) ;
 int InsertTailList (int *,int *) ;
 int RtlZeroMemory (TYPE_1__*,int) ;
 int TAG_INI_NAME ;
 int TAG_INI_SECTION_ITEM ;
 int TAG_INI_VALUE ;
 int TRUE ;
 int strcpy (TYPE_1__*,int ) ;
 int strlen (int ) ;

BOOLEAN IniAddSettingValueToSection(ULONG_PTR SectionId, PCSTR SettingName, PCSTR SettingValue)
{
    PINI_SECTION Section = (PINI_SECTION)SectionId;
    PINI_SECTION_ITEM SectionItem;


    SectionItem = FrLdrTempAlloc(sizeof(INI_SECTION_ITEM), TAG_INI_SECTION_ITEM);
    if (!SectionItem)
    {
        return FALSE;
    }

    RtlZeroMemory(SectionItem, sizeof(INI_SECTION_ITEM));


    SectionItem->ItemName = FrLdrTempAlloc(strlen(SettingName) + 1, TAG_INI_NAME);
    if (!SectionItem->ItemName)
    {
        FrLdrTempFree(SectionItem, TAG_INI_SECTION_ITEM);
        return FALSE;
    }


    SectionItem->ItemValue = FrLdrTempAlloc(strlen(SettingValue) + 1, TAG_INI_VALUE);
    if (!SectionItem->ItemValue)
    {
        FrLdrTempFree(SectionItem->ItemName, TAG_INI_NAME);
        FrLdrTempFree(SectionItem, TAG_INI_SECTION_ITEM);
        return FALSE;
    }

    strcpy(SectionItem->ItemName, SettingName);
    strcpy(SectionItem->ItemValue, SettingValue);


    Section->SectionItemCount++;
    InsertTailList(&Section->SectionItemList, &SectionItem->ListEntry);

    return TRUE;
}
