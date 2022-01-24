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
typedef  scalar_t__ WCHAR ;
struct TYPE_5__ {int Flags; int CurVal; int /*<<< orphan*/  Base; int /*<<< orphan*/  Buddy; } ;
typedef  TYPE_1__ UPDOWN_INFO ;
typedef  int /*<<< orphan*/  BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__*) ; 
 int /*<<< orphan*/  FALSE ; 
 int FLAG_BUDDYINT ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,scalar_t__*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  LB_GETCARETINDEX ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*,int,int) ; 
 int /*<<< orphan*/  TRUE ; 
 scalar_t__ FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,int) ; 
 scalar_t__ FUNC7 (TYPE_1__*) ; 
 int FUNC8 (scalar_t__*,scalar_t__**,int /*<<< orphan*/ ) ; 

__attribute__((used)) static BOOL FUNC9 (UPDOWN_INFO *infoPtr)
{
    WCHAR txt[20], sep, *src, *dst;
    int newVal;

    if (!((infoPtr->Flags & FLAG_BUDDYINT) && FUNC2(infoPtr->Buddy)))
        return FALSE;

    /*if the buddy is a list window, we must set curr index */
    if (FUNC7(infoPtr)) {
        newVal = FUNC3(infoPtr->Buddy, LB_GETCARETINDEX, 0, 0);
        if(newVal < 0) return FALSE;
    } else {
        /* we have a regular window, so will get the text */
        /* note that a zero-length string is a legitimate value for 'txt',
         * and ought to result in a successful conversion to '0'. */
        if (FUNC1(infoPtr->Buddy, txt, FUNC0(txt)) < 0)
            return FALSE;

        sep = FUNC5();

        /* now get rid of the separators */
        for(src = dst = txt; *src; src++)
            if(*src != sep) *dst++ = *src;
        *dst = 0;

        /* try to convert the number and validate it */
        newVal = FUNC8(txt, &src, infoPtr->Base);
        if(*src || !FUNC6 (infoPtr, newVal)) return FALSE;
    }

    FUNC4("new value(%d) from buddy (old=%d)\n", newVal, infoPtr->CurVal);
    infoPtr->CurVal = newVal;
    return TRUE;
}