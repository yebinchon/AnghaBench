#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ ULONG_PTR ;
struct TYPE_4__ {int /*<<< orphan*/  ListEntry; int /*<<< orphan*/  SectionItemList; void* SectionName; } ;
typedef  TYPE_1__* PINI_SECTION ;
typedef  int /*<<< orphan*/  PCSTR ;
typedef  int /*<<< orphan*/  INI_SECTION ;
typedef  int /*<<< orphan*/  CHAR ;
typedef  int /*<<< orphan*/  BOOLEAN ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 void* FUNC0 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  IniFileSectionCount ; 
 int /*<<< orphan*/  IniFileSectionListHead ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  TAG_INI_NAME ; 
 int /*<<< orphan*/  TAG_INI_SECTION ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC5 (void*,int /*<<< orphan*/ ) ; 
 int FUNC6 (int /*<<< orphan*/ ) ; 

BOOLEAN FUNC7(PCSTR SectionName, ULONG_PTR* SectionId)
{
    PINI_SECTION    Section;

    // Allocate a new section structure
    Section = FUNC0(sizeof(INI_SECTION), TAG_INI_SECTION);
    if (!Section)
    {
        return FALSE;
    }

    FUNC4(Section, sizeof(INI_SECTION));

    // Allocate the section name buffer
    Section->SectionName = FUNC0(FUNC6(SectionName) + sizeof(CHAR), TAG_INI_NAME);
    if (!Section->SectionName)
    {
        FUNC1(Section, TAG_INI_SECTION);
        return FALSE;
    }

    // Get the section name
    FUNC5(Section->SectionName, SectionName);
    FUNC2(&Section->SectionItemList);

    // Add it to the section list head
    IniFileSectionCount++;
    FUNC3(&IniFileSectionListHead, &Section->ListEntry);

    *SectionId = (ULONG_PTR)Section;

    return TRUE;
}