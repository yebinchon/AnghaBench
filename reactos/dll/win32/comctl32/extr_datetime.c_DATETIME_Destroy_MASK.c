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
struct TYPE_4__ {struct TYPE_4__* fieldspec; struct TYPE_4__* fieldRect; struct TYPE_4__* buflen; int /*<<< orphan*/  hwndSelf; scalar_t__ hMonthCal; scalar_t__ hUpdown; scalar_t__ hwndCheckbut; } ;
typedef  int /*<<< orphan*/  LRESULT ;
typedef  TYPE_1__ DATETIME_INFO ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static LRESULT
FUNC3 (DATETIME_INFO *infoPtr)
{
    if (infoPtr->hwndCheckbut)
	FUNC0(infoPtr->hwndCheckbut);
    if (infoPtr->hUpdown)
	FUNC0(infoPtr->hUpdown);
    if (infoPtr->hMonthCal) 
        FUNC0(infoPtr->hMonthCal);
    FUNC2( infoPtr->hwndSelf, 0, 0 ); /* clear infoPtr */
    FUNC1 (infoPtr->buflen);
    FUNC1 (infoPtr->fieldRect);
    FUNC1 (infoPtr->fieldspec);
    FUNC1 (infoPtr);
    return 0;
}