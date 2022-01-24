#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  ULONG_PTR ;
typedef  size_t ULONG ;
struct TYPE_5__ {int /*<<< orphan*/  Flink; } ;
struct TYPE_7__ {TYPE_1__ SectionItemList; } ;
struct TYPE_6__ {TYPE_1__ ListEntry; int /*<<< orphan*/  ItemValue; int /*<<< orphan*/  ItemName; } ;
typedef  TYPE_2__* PINI_SECTION_ITEM ;
typedef  TYPE_3__* PINI_SECTION ;
typedef  int /*<<< orphan*/  PCSTR ;
typedef  char* PCHAR ;
typedef  int /*<<< orphan*/  BOOLEAN ;

/* Variables and functions */
 TYPE_2__* FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  INI_SECTION_ITEM ; 
 int /*<<< orphan*/  ListEntry ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ ,size_t) ; 

BOOLEAN FUNC5(ULONG_PTR SectionId, PCSTR SettingName, PCHAR Buffer, ULONG BufferSize)
{
    PINI_SECTION        Section = (PINI_SECTION)SectionId;
    PINI_SECTION_ITEM    SectionItem;

    FUNC1("IniReadSettingByName() SectionId = 0x%x\n", SectionId);

    // Loop through each section item and find the one they want
    SectionItem = FUNC0(Section->SectionItemList.Flink, INI_SECTION_ITEM, ListEntry);
    while (&SectionItem->ListEntry != &Section->SectionItemList)
    {
        // Check to see if this is the setting they want
        if (FUNC3(SettingName, SectionItem->ItemName) == 0)
        {
            FUNC1("IniReadSettingByName() Setting \'%s\' found.\n", SettingName);
            FUNC1("IniReadSettingByName() Setting value = %s\n", SectionItem->ItemValue);

            FUNC4(Buffer, SectionItem->ItemValue, BufferSize - 1);
            Buffer[BufferSize - 1] = '\0';

            return TRUE;
        }

        // Get the next section item in the list
        SectionItem = FUNC0(SectionItem->ListEntry.Flink, INI_SECTION_ITEM, ListEntry);
    }

    FUNC2("IniReadSettingByName() Setting \'%s\' not found.\n", SettingName);

    return FALSE;
}