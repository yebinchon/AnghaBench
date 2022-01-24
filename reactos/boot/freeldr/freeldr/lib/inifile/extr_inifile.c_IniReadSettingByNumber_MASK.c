#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  ULONG_PTR ;
typedef  size_t ULONG ;
struct TYPE_3__ {int /*<<< orphan*/  ItemValue; int /*<<< orphan*/  ItemName; } ;
typedef  TYPE_1__* PINI_SECTION_ITEM ;
typedef  char* PCHAR ;
typedef  int /*<<< orphan*/  BOOLEAN ;

/* Variables and functions */
 int /*<<< orphan*/  DPRINT_INIFILE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,size_t) ; 
 int /*<<< orphan*/  FALSE ; 
 TYPE_1__* FUNC1 (int /*<<< orphan*/ ,size_t) ; 
 int /*<<< orphan*/  FUNC2 (char*,size_t,...) ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ,size_t) ; 

BOOLEAN FUNC4(ULONG_PTR SectionId, ULONG SettingNumber, PCHAR SettingName, ULONG NameSize, PCHAR SettingValue, ULONG ValueSize)
{
    PINI_SECTION_ITEM    SectionItem;
    FUNC2(".001 NameSize = %d ValueSize = %d\n", NameSize, ValueSize);

    FUNC2("IniReadSettingByNumber() SectionId = 0x%x\n", SectionId);

    // Retrieve requested setting
    SectionItem = FUNC1(SectionId, SettingNumber);
    if (!SectionItem)
    {
        FUNC2("IniReadSettingByNumber() Setting number %d not found.\n", SettingNumber);
        return FALSE;
    }

    FUNC2("IniReadSettingByNumber() Setting number %d found.\n", SettingNumber);
    FUNC2("IniReadSettingByNumber() Setting name = %s\n", SectionItem->ItemName);
    FUNC2("IniReadSettingByNumber() Setting value = %s\n", SectionItem->ItemValue);

    FUNC2("1 NameSize = %d ValueSize = %d\n", NameSize, ValueSize);
    FUNC2("2 NameSize = %d ValueSize = %d\n", NameSize, ValueSize);
    FUNC3(SettingName, SectionItem->ItemName, NameSize - 1);
    SettingName[NameSize - 1] = '\0';
    FUNC2("3 NameSize = %d ValueSize = %d\n", NameSize, ValueSize);
    FUNC3(SettingValue, SectionItem->ItemValue, ValueSize - 1);
    SettingValue[ValueSize - 1] = '\0';
    FUNC2("4 NameSize = %d ValueSize = %d\n", NameSize, ValueSize);
    FUNC0(DPRINT_INIFILE, SettingName, NameSize);
    FUNC0(DPRINT_INIFILE, SettingValue, ValueSize);

    return TRUE;
}