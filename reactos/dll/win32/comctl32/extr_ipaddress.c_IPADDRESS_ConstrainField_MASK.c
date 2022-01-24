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
typedef  char WCHAR ;
struct TYPE_6__ {TYPE_1__* Part; } ;
struct TYPE_5__ {int LowerLimit; int UpperLimit; int /*<<< orphan*/  EditHwnd; } ;
typedef  TYPE_1__ IPPART_INFO ;
typedef  TYPE_2__ IPADDRESS_INFO ;
typedef  int /*<<< orphan*/  BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int) ; 
 int FUNC1 (TYPE_2__ const*,int,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 (char*,int) ; 
 int FUNC4 (char*) ; 
 int FUNC5 (char*) ; 
 int /*<<< orphan*/  FUNC6 (char*,char const*,int) ; 

__attribute__((used)) static BOOL FUNC7 (const IPADDRESS_INFO *infoPtr, int currentfield)
{
    static const WCHAR fmt[] = { '%', 'd', 0 };
    const IPPART_INFO *part;
    int curValue, newValue;
    WCHAR field[10];

    FUNC3("(currentfield=%d)\n", currentfield);

    if (currentfield < 0 || currentfield > 3) return FALSE;

    part = &infoPtr->Part[currentfield];
    if (!FUNC0 (part->EditHwnd, field, 4)) return FALSE;

    curValue = FUNC4(field);
    FUNC3("  curValue=%d\n", curValue);

    newValue = FUNC1(infoPtr, currentfield, curValue);
    FUNC3("  newValue=%d\n", newValue);

    if (newValue < part->LowerLimit) newValue = part->LowerLimit;
    if (newValue > part->UpperLimit) newValue = part->UpperLimit;

    if (newValue == curValue) return FALSE;

    FUNC6 (field, fmt, newValue);
    FUNC3("  field=%s\n", FUNC5(field));
    return FUNC2 (part->EditHwnd, field);
}