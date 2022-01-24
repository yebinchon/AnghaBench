#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ UINT ;
struct TYPE_6__ {scalar_t__ uIndent; int /*<<< orphan*/  root; } ;
typedef  TYPE_1__ TREEVIEW_INFO ;
typedef  int /*<<< orphan*/  LRESULT ;

/* Variables and functions */
 scalar_t__ MINIMUM_INDENT ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static LRESULT
FUNC4(TREEVIEW_INFO *infoPtr, UINT newIndent)
{
    FUNC0("\n");

    if (newIndent < MINIMUM_INDENT)
	newIndent = MINIMUM_INDENT;

    if (infoPtr->uIndent != newIndent)
    {
	infoPtr->uIndent = newIndent;
	FUNC3(infoPtr, infoPtr->root);
	FUNC2(infoPtr);
	FUNC1(infoPtr, NULL);
    }

    return 0;
}