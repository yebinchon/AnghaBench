
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int ULONG_PTR ;
struct TYPE_5__ {int Flink; } ;
struct TYPE_7__ {TYPE_1__ SectionItemList; } ;
struct TYPE_6__ {scalar_t__ ItemValue; TYPE_1__ ListEntry; int ItemName; } ;
typedef TYPE_2__* PINI_SECTION_ITEM ;
typedef TYPE_3__* PINI_SECTION ;
typedef int PCSTR ;
typedef scalar_t__ PCHAR ;
typedef int BOOLEAN ;


 TYPE_2__* CONTAINING_RECORD (int ,int ,int ) ;
 int FALSE ;
 scalar_t__ FrLdrTempAlloc (scalar_t__,int ) ;
 int FrLdrTempFree (scalar_t__,int ) ;
 int INI_SECTION_ITEM ;
 int IniAddSettingValueToSection (int ,int ,int ) ;
 int ListEntry ;
 int TAG_INI_VALUE ;
 int TRUE ;
 scalar_t__ _stricmp (int ,int ) ;
 int strcpy (scalar_t__,int ) ;
 scalar_t__ strlen (int ) ;

BOOLEAN IniModifySettingValue(ULONG_PTR SectionId, PCSTR SettingName, PCSTR SettingValue)
{
    PINI_SECTION Section = (PINI_SECTION)SectionId;
    PINI_SECTION_ITEM SectionItem;
    PCHAR NewItemValue;


    SectionItem = CONTAINING_RECORD(Section->SectionItemList.Flink, INI_SECTION_ITEM, ListEntry);
    while (&SectionItem->ListEntry != &Section->SectionItemList)
    {

        if (_stricmp(SectionItem->ItemName, SettingName) == 0)
        {
            break;
        }



        SectionItem = CONTAINING_RECORD(SectionItem->ListEntry.Flink, INI_SECTION_ITEM, ListEntry);
    }

    if (&SectionItem->ListEntry == &Section->SectionItemList)
    {
        return IniAddSettingValueToSection(SectionId, SettingName, SettingValue);
    }


    NewItemValue = FrLdrTempAlloc(strlen(SettingValue) + 1, TAG_INI_VALUE);
    if (!NewItemValue)
    {

        return FALSE;
    }
    FrLdrTempFree(SectionItem->ItemValue, TAG_INI_VALUE);
    SectionItem->ItemValue = NewItemValue;

    strcpy(SectionItem->ItemValue, SettingValue);

    return TRUE;
}
