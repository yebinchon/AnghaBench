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
typedef  int /*<<< orphan*/  ULONG ;
struct TYPE_3__ {int /*<<< orphan*/  ItemName; } ;
typedef  TYPE_1__* PINI_SECTION_ITEM ;

/* Variables and functions */
 TYPE_1__* FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 

ULONG FUNC2(ULONG_PTR SectionId, ULONG SettingIndex)
{
    PINI_SECTION_ITEM    SectionItem;

    // Retrieve requested setting
    SectionItem = FUNC0(SectionId, SettingIndex);
    if (!SectionItem)
        return 0;

    // Return the size of the string plus 1 for the null-terminator
    return (ULONG)(FUNC1(SectionItem->ItemName) + 1);
}