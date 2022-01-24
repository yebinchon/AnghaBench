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
struct TYPE_4__ {int nCurrentTool; int /*<<< orphan*/  bActive; } ;
typedef  TYPE_1__ TOOLTIPS_INFO ;
typedef  int /*<<< orphan*/  LRESULT ;
typedef  int /*<<< orphan*/  BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static LRESULT
FUNC2 (TOOLTIPS_INFO *infoPtr, BOOL activate)
{
    infoPtr->bActive = activate;

    FUNC1("activate %d\n", activate);

    if (!(infoPtr->bActive) && (infoPtr->nCurrentTool != -1))
	FUNC0 (infoPtr);

    return 0;
}