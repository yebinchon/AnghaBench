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
typedef  int /*<<< orphan*/  VOID ;
typedef  char* PCSTR ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  COLOR_BLACK ; 
 int /*<<< orphan*/  COLOR_GRAY ; 
 int /*<<< orphan*/  D_HORZ ; 
 int /*<<< orphan*/  D_VERT ; 
 char KEY_ENTER ; 
 char KEY_ESC ; 
 char KEY_EXTENDED ; 
 char KEY_SPACE ; 
 char FUNC1 () ; 
 scalar_t__ FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC4 (int,int,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 int /*<<< orphan*/  FUNC7 (int,int,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  UiMessageBoxBgColor ; 
 int /*<<< orphan*/  UiMessageBoxFgColor ; 
 unsigned int UiScreenHeight ; 
 int UiScreenWidth ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 (char*,char*) ; 
 int FUNC10 (char*) ; 

VOID FUNC11(PCSTR MessageText)
{
    int        width = 8;
    unsigned int    height = 1;
    int        curline = 0;
    int        k;
    size_t        i , j;
    int        x1, x2, y1, y2;
    char    temp[260];
    char    key;

    // Find the height
    for (i=0; i<FUNC10(MessageText); i++)
    {
        if (MessageText[i] == '\n')
            height++;
    }

    // Find the width
    for (i=0,j=0,k=0; i<height; i++)
    {
        while ((MessageText[j] != '\n') && (MessageText[j] != 0))
        {
            j++;
            k++;
        }

        if (k > width)
            width = k;

        k = 0;
        j++;
    }

    // Calculate box area
    x1 = (UiScreenWidth - (width+2))/2;
    x2 = x1 + width + 3;
    y1 = ((UiScreenHeight - height - 2)/2) + 1;
    y2 = y1 + height + 4;

    // Draw the box
    FUNC4(x1, y1, x2, y2, D_VERT, D_HORZ, TRUE, TRUE, FUNC0(UiMessageBoxFgColor, UiMessageBoxBgColor));

    // Draw the text
    for (i=0,j=0; i<FUNC10(MessageText)+1; i++)
    {
        if ((MessageText[i] == '\n') || (MessageText[i] == 0))
        {
            temp[j] = 0;
            j = 0;
            FUNC7(x1+2, y1+1+curline, temp, FUNC0(UiMessageBoxFgColor, UiMessageBoxBgColor));
            curline++;
        }
        else
            temp[j++] = MessageText[i];
    }

    // Draw OK button
    FUNC9(temp, "   OK   ");
    FUNC7(x1+((x2-x1)/2)-3, y2-2, temp, FUNC0(COLOR_BLACK, COLOR_GRAY));

    // Draw status text
    FUNC6("Press ENTER to continue");

    FUNC8();

    for (;;)
    {
        if (FUNC2())
        {
            key = FUNC1();
            if (key == KEY_EXTENDED)
                key = FUNC1();

            if ((key == KEY_ENTER) || (key == KEY_SPACE) || (key == KEY_ESC))
                break;
        }

        FUNC5();

        FUNC8();

        FUNC3();
    }
}