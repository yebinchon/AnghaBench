
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int ULONG_PTR ;
typedef size_t ULONG ;
struct TYPE_5__ {int Flink; } ;
struct TYPE_7__ {TYPE_1__ SectionItemList; } ;
struct TYPE_6__ {TYPE_1__ ListEntry; int ItemValue; int ItemName; } ;
typedef TYPE_2__* PINI_SECTION_ITEM ;
typedef TYPE_3__* PINI_SECTION ;
typedef int PCSTR ;
typedef char* PCHAR ;
typedef int BOOLEAN ;


 TYPE_2__* CONTAINING_RECORD (int ,int ,int ) ;
 int FALSE ;
 int INI_SECTION_ITEM ;
 int ListEntry ;
 int TRACE (char*,int ) ;
 int TRUE ;
 int WARN (char*,int ) ;
 scalar_t__ _stricmp (int ,int ) ;
 int strncpy (char*,int ,size_t) ;

BOOLEAN IniReadSettingByName(ULONG_PTR SectionId, PCSTR SettingName, PCHAR Buffer, ULONG BufferSize)
{
    PINI_SECTION Section = (PINI_SECTION)SectionId;
    PINI_SECTION_ITEM SectionItem;

    TRACE("IniReadSettingByName() SectionId = 0x%x\n", SectionId);


    SectionItem = CONTAINING_RECORD(Section->SectionItemList.Flink, INI_SECTION_ITEM, ListEntry);
    while (&SectionItem->ListEntry != &Section->SectionItemList)
    {

        if (_stricmp(SettingName, SectionItem->ItemName) == 0)
        {
            TRACE("IniReadSettingByName() Setting \'%s\' found.\n", SettingName);
            TRACE("IniReadSettingByName() Setting value = %s\n", SectionItem->ItemValue);

            strncpy(Buffer, SectionItem->ItemValue, BufferSize - 1);
            Buffer[BufferSize - 1] = '\0';

            return TRUE;
        }


        SectionItem = CONTAINING_RECORD(SectionItem->ListEntry.Flink, INI_SECTION_ITEM, ListEntry);
    }

    WARN("IniReadSettingByName() Setting \'%s\' not found.\n", SettingName);

    return FALSE;
}
