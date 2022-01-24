#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  ULONG ;
struct TYPE_6__ {unsigned int wMapLen; int /*<<< orphan*/  lpszPath; TYPE_1__* Map; } ;
struct TYPE_5__ {scalar_t__ lMap; int /*<<< orphan*/  offset; } ;
typedef  scalar_t__ LONG ;
typedef  int /*<<< orphan*/  HLPFILE_PAGE ;
typedef  TYPE_2__ HLPFILE ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (char*,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

HLPFILE_PAGE *FUNC4(HLPFILE* hlpfile, LONG lMap, ULONG* relative)
{
    unsigned int i;

    if (!hlpfile) return 0;

    FUNC2("<%s>[%x]\n", FUNC3(hlpfile->lpszPath), lMap);

    for (i = 0; i < hlpfile->wMapLen; i++)
    {
        if (hlpfile->Map[i].lMap == lMap)
            return FUNC0(hlpfile, hlpfile->Map[i].offset, relative);
    }

    FUNC1("Page of Map %x not found in file %s\n", lMap, FUNC3(hlpfile->lpszPath));
    return NULL;
}