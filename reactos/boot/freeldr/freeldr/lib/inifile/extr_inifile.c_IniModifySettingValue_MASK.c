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
struct TYPE_5__ {int /*<<< orphan*/  Flink; } ;
struct TYPE_7__ {TYPE_1__ SectionItemList; } ;
struct TYPE_6__ {scalar_t__ ItemValue; TYPE_1__ ListEntry; int /*<<< orphan*/  ItemName; } ;
typedef  TYPE_2__* PINI_SECTION_ITEM ;
typedef  TYPE_3__* PINI_SECTION ;
typedef  int /*<<< orphan*/  PCSTR ;
typedef  scalar_t__ PCHAR ;
typedef  int /*<<< orphan*/  BOOLEAN ;

/* Variables and functions */
 TYPE_2__* FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FALSE ; 
 scalar_t__ FUNC1 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  INI_SECTION_ITEM ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ListEntry ; 
 int /*<<< orphan*/  TAG_INI_VALUE ; 
 int /*<<< orphan*/  TRUE ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 

BOOLEAN FUNC7(ULONG_PTR SectionId, PCSTR SettingName, PCSTR SettingValue)
{
    PINI_SECTION        Section = (PINI_SECTION)SectionId;
    PINI_SECTION_ITEM    SectionItem;
    PCHAR NewItemValue;

    // Loop through each section item and find the one we want
    SectionItem = FUNC0(Section->SectionItemList.Flink, INI_SECTION_ITEM, ListEntry);
    while (&SectionItem->ListEntry != &Section->SectionItemList)
    {
        // Check to see if this is the setting we want
        if (FUNC4(SectionItem->ItemName, SettingName) == 0)
        {
            break;
        }

        // Nope, keep going
        // Get the next section item in the list
        SectionItem = FUNC0(SectionItem->ListEntry.Flink, INI_SECTION_ITEM, ListEntry);
    }
    // If the section item does not exist, create it
    if (&SectionItem->ListEntry == &Section->SectionItemList)
    {
        return FUNC3(SectionId, SettingName, SettingValue);
    }

    // Reallocate the new setting value buffer
    NewItemValue = FUNC1(FUNC6(SettingValue) + 1, TAG_INI_VALUE);
    if (!NewItemValue)
    {
        // We failed, bail out
        return FALSE;
    }
    FUNC2(SectionItem->ItemValue, TAG_INI_VALUE);
    SectionItem->ItemValue = NewItemValue;

    FUNC5(SectionItem->ItemValue, SettingValue);

    return TRUE;
}