#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  SYSLINK_INFO ;
typedef  int /*<<< orphan*/ * PDOC_ITEM ;
typedef  scalar_t__ BOOL ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/  const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/  const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/  const*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static BOOL FUNC3 (const SYSLINK_INFO *infoPtr, BOOL Prev)
{
    PDOC_ITEM Focus, NewFocus;

    Focus = FUNC0(infoPtr, NULL);
    if(Prev)
        NewFocus = FUNC2(infoPtr, Focus);
    else
        NewFocus = FUNC1(infoPtr, Focus);

    return NewFocus == NULL;
}