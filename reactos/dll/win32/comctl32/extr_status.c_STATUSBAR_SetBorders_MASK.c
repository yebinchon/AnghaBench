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
struct TYPE_3__ {int /*<<< orphan*/  Self; int /*<<< orphan*/  horizontalGap; int /*<<< orphan*/  verticalBorder; int /*<<< orphan*/  horizontalBorder; } ;
typedef  TYPE_1__ STATUS_INFO ;
typedef  int /*<<< orphan*/  INT ;
typedef  int /*<<< orphan*/  BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  TRUE ; 

__attribute__((used)) static BOOL
FUNC2 (STATUS_INFO *infoPtr, const INT in[])
{
    FUNC1("\n");
    infoPtr->horizontalBorder = in[0];
    infoPtr->verticalBorder = in[1];
    infoPtr->horizontalGap = in[2];
    FUNC0(infoPtr->Self, NULL, FALSE);

    return TRUE;
}