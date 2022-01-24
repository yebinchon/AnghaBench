#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  ULONG_PTR ;
struct TYPE_7__ {int /*<<< orphan*/  SectionItemList; int /*<<< orphan*/  SectionItemCount; } ;
struct TYPE_6__ {int /*<<< orphan*/  ListEntry; struct TYPE_6__* ItemValue; struct TYPE_6__* ItemName; } ;
typedef  TYPE_1__* PINI_SECTION_ITEM ;
typedef  TYPE_2__* PINI_SECTION ;
typedef  int /*<<< orphan*/  PCSTR ;
typedef  int /*<<< orphan*/  INI_SECTION_ITEM ;
typedef  int /*<<< orphan*/  BOOLEAN ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 void* FUNC0 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  TAG_INI_NAME ; 
 int /*<<< orphan*/  TAG_INI_SECTION_ITEM ; 
 int /*<<< orphan*/  TAG_INI_VALUE ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 

BOOLEAN FUNC6(ULONG_PTR SectionId, PCSTR SettingName, PCSTR SettingValue)
{
    PINI_SECTION        Section = (PINI_SECTION)SectionId;
    PINI_SECTION_ITEM    SectionItem;

    // Allocate a new item structure
    SectionItem = FUNC0(sizeof(INI_SECTION_ITEM), TAG_INI_SECTION_ITEM);
    if (!SectionItem)
    {
        return FALSE;
    }

    FUNC3(SectionItem, sizeof(INI_SECTION_ITEM));

    // Allocate the setting name buffer
    SectionItem->ItemName = FUNC0(FUNC5(SettingName) + 1, TAG_INI_NAME);
    if (!SectionItem->ItemName)
    {
        FUNC1(SectionItem, TAG_INI_SECTION_ITEM);
        return FALSE;
    }

    // Allocate the setting value buffer
    SectionItem->ItemValue = FUNC0(FUNC5(SettingValue) + 1, TAG_INI_VALUE);
    if (!SectionItem->ItemValue)
    {
        FUNC1(SectionItem->ItemName, TAG_INI_NAME);
        FUNC1(SectionItem, TAG_INI_SECTION_ITEM);
        return FALSE;
    }

    FUNC4(SectionItem->ItemName, SettingName);
    FUNC4(SectionItem->ItemValue, SettingValue);

    // Add it to the current section
    Section->SectionItemCount++;
    FUNC2(&Section->SectionItemList, &SectionItem->ListEntry);

    return TRUE;
}