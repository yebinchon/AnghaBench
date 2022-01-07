
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int ULONG_PTR ;
typedef scalar_t__ ULONG ;
struct TYPE_6__ {int Flink; } ;
struct TYPE_8__ {TYPE_1__ SectionItemList; } ;
struct TYPE_7__ {TYPE_1__ ListEntry; } ;
typedef TYPE_2__* PINI_SECTION_ITEM ;
typedef TYPE_3__* PINI_SECTION ;


 TYPE_2__* CONTAINING_RECORD (int ,int ,int ) ;
 int INI_SECTION_ITEM ;
 int ListEntry ;

PINI_SECTION_ITEM IniGetSettingByNumber(ULONG_PTR SectionId, ULONG SettingNumber)
{
    PINI_SECTION Section = (PINI_SECTION)SectionId;
    PINI_SECTION_ITEM SectionItem;


    SectionItem = CONTAINING_RECORD(Section->SectionItemList.Flink, INI_SECTION_ITEM, ListEntry);
    while (&SectionItem->ListEntry != &Section->SectionItemList)
    {

        if (SettingNumber == 0)
        {
            return SectionItem;
        }


        SettingNumber--;


        SectionItem = CONTAINING_RECORD(SectionItem->ListEntry.Flink, INI_SECTION_ITEM, ListEntry);
    }
    return ((void*)0);
}
