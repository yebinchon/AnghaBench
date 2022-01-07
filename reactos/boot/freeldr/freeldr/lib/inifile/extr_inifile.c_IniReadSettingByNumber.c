
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int ULONG_PTR ;
typedef size_t ULONG ;
struct TYPE_3__ {int ItemValue; int ItemName; } ;
typedef TYPE_1__* PINI_SECTION_ITEM ;
typedef char* PCHAR ;
typedef int BOOLEAN ;


 int DPRINT_INIFILE ;
 int DbgDumpBuffer (int ,char*,size_t) ;
 int FALSE ;
 TYPE_1__* IniGetSettingByNumber (int ,size_t) ;
 int TRACE (char*,size_t,...) ;
 int TRUE ;
 int strncpy (char*,int ,size_t) ;

BOOLEAN IniReadSettingByNumber(ULONG_PTR SectionId, ULONG SettingNumber, PCHAR SettingName, ULONG NameSize, PCHAR SettingValue, ULONG ValueSize)
{
    PINI_SECTION_ITEM SectionItem;
    TRACE(".001 NameSize = %d ValueSize = %d\n", NameSize, ValueSize);

    TRACE("IniReadSettingByNumber() SectionId = 0x%x\n", SectionId);


    SectionItem = IniGetSettingByNumber(SectionId, SettingNumber);
    if (!SectionItem)
    {
        TRACE("IniReadSettingByNumber() Setting number %d not found.\n", SettingNumber);
        return FALSE;
    }

    TRACE("IniReadSettingByNumber() Setting number %d found.\n", SettingNumber);
    TRACE("IniReadSettingByNumber() Setting name = %s\n", SectionItem->ItemName);
    TRACE("IniReadSettingByNumber() Setting value = %s\n", SectionItem->ItemValue);

    TRACE("1 NameSize = %d ValueSize = %d\n", NameSize, ValueSize);
    TRACE("2 NameSize = %d ValueSize = %d\n", NameSize, ValueSize);
    strncpy(SettingName, SectionItem->ItemName, NameSize - 1);
    SettingName[NameSize - 1] = '\0';
    TRACE("3 NameSize = %d ValueSize = %d\n", NameSize, ValueSize);
    strncpy(SettingValue, SectionItem->ItemValue, ValueSize - 1);
    SettingValue[ValueSize - 1] = '\0';
    TRACE("4 NameSize = %d ValueSize = %d\n", NameSize, ValueSize);
    DbgDumpBuffer(DPRINT_INIFILE, SettingName, NameSize);
    DbgDumpBuffer(DPRINT_INIFILE, SettingValue, ValueSize);

    return TRUE;
}
