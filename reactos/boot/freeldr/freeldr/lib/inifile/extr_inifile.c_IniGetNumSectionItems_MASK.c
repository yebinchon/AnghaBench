#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  ULONG_PTR ;
typedef  int /*<<< orphan*/  ULONG ;
struct TYPE_2__ {int /*<<< orphan*/  SectionItemCount; } ;
typedef  TYPE_1__* PINI_SECTION ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 

ULONG FUNC1(ULONG_PTR SectionId)
{
    PINI_SECTION    Section = (PINI_SECTION)SectionId;

    FUNC0("IniGetNumSectionItems() SectionId = 0x%x\n", SectionId);
    FUNC0("IniGetNumSectionItems() Item count = %d\n", Section->SectionItemCount);

    return Section->SectionItemCount;
}