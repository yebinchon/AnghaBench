#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/ * LastLine; int /*<<< orphan*/ * FirstLine; struct TYPE_5__* Next; } ;
typedef  TYPE_1__* PINFCACHESECTION ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  TAG_INF_SECTION ; 

__attribute__((used)) static
PINFCACHESECTION
FUNC2(
    PINFCACHESECTION Section)
{
    PINFCACHESECTION Next;

    if (Section == NULL)
    {
        return NULL;
    }

    /* Release all keys */
    Next = Section->Next;
    while (Section->FirstLine != NULL)
    {
        Section->FirstLine = FUNC1(Section->FirstLine);
    }
    Section->LastLine = NULL;

    FUNC0(Section, TAG_INF_SECTION);

    return Next;
}