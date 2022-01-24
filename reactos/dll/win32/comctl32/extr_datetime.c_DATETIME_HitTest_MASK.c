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
struct TYPE_3__ {int nrFields; int /*<<< orphan*/ * fieldRect; int /*<<< orphan*/  checkbox; int /*<<< orphan*/  calbutton; } ;
typedef  int /*<<< orphan*/  POINT ;
typedef  int INT ;
typedef  TYPE_1__ DATETIME_INFO ;

/* Variables and functions */
 int DTHT_CHECKBOX ; 
 int DTHT_MCPOPUP ; 
 int DTHT_NONE ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static INT
FUNC3 (const DATETIME_INFO *infoPtr, POINT pt)
{
    int i;

    FUNC1 ("%s\n", FUNC2(&pt));

    if (FUNC0 (&infoPtr->calbutton, pt)) return DTHT_MCPOPUP;
    if (FUNC0 (&infoPtr->checkbox, pt)) return DTHT_CHECKBOX;

    for (i = 0; i < infoPtr->nrFields; i++) {
        if (FUNC0 (&infoPtr->fieldRect[i], pt)) return i;
    }

    return DTHT_NONE;
}