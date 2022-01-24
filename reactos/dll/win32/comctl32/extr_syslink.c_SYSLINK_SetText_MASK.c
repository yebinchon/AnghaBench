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
struct TYPE_6__ {int /*<<< orphan*/  Self; } ;
typedef  TYPE_1__ SYSLINK_INFO ;
typedef  int /*<<< orphan*/  RECT ;
typedef  int /*<<< orphan*/  LRESULT ;
typedef  scalar_t__* LPCWSTR ;
typedef  int /*<<< orphan*/ * HDC ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 scalar_t__ FUNC5 (TYPE_1__*,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  TRUE ; 

__attribute__((used)) static LRESULT FUNC7 (SYSLINK_INFO *infoPtr, LPCWSTR Text)
{
    /* clear the document */
    FUNC4(infoPtr);

    if(Text == NULL || *Text == 0)
    {
        return TRUE;
    }

    /* let's parse the string and create a document */
    if(FUNC5(infoPtr, Text) > 0)
    {
        RECT rcClient;

        /* Render text position and word wrapping in memory */
        if (FUNC0(infoPtr->Self, &rcClient))
        {
            HDC hdc = FUNC1(infoPtr->Self);
            if (hdc != NULL)
            {
                FUNC6(infoPtr, hdc, &rcClient);
                FUNC3(infoPtr->Self, hdc);

                FUNC2(infoPtr->Self, NULL, TRUE);
            }
        }
    }
    
    return TRUE;
}