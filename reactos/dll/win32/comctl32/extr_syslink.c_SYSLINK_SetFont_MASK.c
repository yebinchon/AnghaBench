#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_11__ {int /*<<< orphan*/  lfUnderline; } ;
struct TYPE_10__ {int /*<<< orphan*/  Self; int /*<<< orphan*/  BreakChar; int /*<<< orphan*/ * LinkFont; int /*<<< orphan*/  Font; } ;
struct TYPE_9__ {int /*<<< orphan*/  tmBreakChar; } ;
typedef  TYPE_1__ TEXTMETRICW ;
typedef  TYPE_2__ SYSLINK_INFO ;
typedef  int /*<<< orphan*/  RECT ;
typedef  TYPE_3__ LOGFONTW ;
typedef  int /*<<< orphan*/  HFONT ;
typedef  int /*<<< orphan*/ * HDC ;
typedef  scalar_t__ BOOL ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,int,TYPE_3__*) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 int RDW_INVALIDATE ; 
 int RDW_UPDATENOW ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_2__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  TRUE ; 

__attribute__((used)) static HFONT FUNC10 (SYSLINK_INFO *infoPtr, HFONT hFont, BOOL bRedraw)
{
    HDC hdc;
    LOGFONTW lf;
    TEXTMETRICW tm;
    RECT rcClient;
    HFONT hOldFont = infoPtr->Font;
    infoPtr->Font = hFont;
    
    /* free the underline font */
    if(infoPtr->LinkFont != NULL)
    {
        FUNC1(infoPtr->LinkFont);
        infoPtr->LinkFont = NULL;
    }

    /* Render text position and word wrapping in memory */
    if (FUNC3(infoPtr->Self, &rcClient))
    {
        hdc = FUNC4(infoPtr->Self);
        if(hdc != NULL)
        {
            /* create a new underline font */
            if(FUNC6(hdc, &tm) &&
               FUNC5(infoPtr->Font, sizeof(LOGFONTW), &lf))
            {
                lf.lfUnderline = TRUE;
                infoPtr->LinkFont = FUNC0(&lf);
                infoPtr->BreakChar = tm.tmBreakChar;
            }
            else
            {
                FUNC2("Failed to create link font!\n");
            }

            FUNC9(infoPtr, hdc, &rcClient);
            FUNC8(infoPtr->Self, hdc);
        }
    }
    
    if(bRedraw)
    {
        FUNC7(infoPtr->Self, NULL, NULL, RDW_INVALIDATE | RDW_UPDATENOW);
    }
    
    return hOldFont;
}