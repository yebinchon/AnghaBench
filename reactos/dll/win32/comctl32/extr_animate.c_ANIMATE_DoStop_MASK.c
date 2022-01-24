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
struct TYPE_4__ {scalar_t__ threadId; int /*<<< orphan*/  cs; scalar_t__ uTimer; int /*<<< orphan*/  hwndSelf; scalar_t__ hStopEvent; scalar_t__ hThread; } ;
typedef  scalar_t__ HANDLE ;
typedef  scalar_t__ BOOL ;
typedef  TYPE_1__ ANIMATE_INFO ;

/* Variables and functions */
 int /*<<< orphan*/  ACN_STOP ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FALSE ; 
 scalar_t__ FUNC3 () ; 
 int /*<<< orphan*/  INFINITE ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 
 scalar_t__ TRUE ; 
 int /*<<< orphan*/  FUNC8 (scalar_t__,int /*<<< orphan*/ ) ; 

__attribute__((used)) static BOOL FUNC9(ANIMATE_INFO *infoPtr)
{
    BOOL stopped = FALSE;

    FUNC2(&infoPtr->cs);

    /* should stop playing */
    if (infoPtr->hThread)
    {
        HANDLE handle = infoPtr->hThread;

        FUNC7("stopping animation thread\n");
        infoPtr->hThread = 0;
        FUNC6( infoPtr->hStopEvent );

        if (infoPtr->threadId != FUNC3())
        {
            FUNC5(&infoPtr->cs);  /* leave it a chance to run */
            FUNC8( handle, INFINITE );
            FUNC7("animation thread stopped\n");
            FUNC2(&infoPtr->cs);
        }

        FUNC1( handle );
        FUNC1( infoPtr->hStopEvent );
        infoPtr->hStopEvent = 0;
        stopped = TRUE;
    }
    if (infoPtr->uTimer) {
	FUNC4(infoPtr->hwndSelf, infoPtr->uTimer);
	infoPtr->uTimer = 0;
	stopped = TRUE;
    }

    FUNC5(&infoPtr->cs);

    if (stopped)
        FUNC0(infoPtr, ACN_STOP);

    return TRUE;
}