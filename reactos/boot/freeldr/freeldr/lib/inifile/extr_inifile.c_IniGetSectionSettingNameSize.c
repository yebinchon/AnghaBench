
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int ULONG_PTR ;
typedef int ULONG ;
struct TYPE_3__ {int ItemName; } ;
typedef TYPE_1__* PINI_SECTION_ITEM ;


 TYPE_1__* IniGetSettingByNumber (int ,int ) ;
 scalar_t__ strlen (int ) ;

ULONG IniGetSectionSettingNameSize(ULONG_PTR SectionId, ULONG SettingIndex)
{
    PINI_SECTION_ITEM SectionItem;


    SectionItem = IniGetSettingByNumber(SectionId, SettingIndex);
    if (!SectionItem)
        return 0;


    return (ULONG)(strlen(SectionItem->ItemName) + 1);
}
