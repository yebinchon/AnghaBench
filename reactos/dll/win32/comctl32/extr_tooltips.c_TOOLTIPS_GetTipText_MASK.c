#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  char WCHAR ;
struct TYPE_9__ {int /*<<< orphan*/  hwndSelf; TYPE_1__* tools; } ;
struct TYPE_8__ {scalar_t__ lpszText; scalar_t__ bNotifyUnicode; int /*<<< orphan*/  hinst; } ;
typedef  TYPE_1__ TTTOOL_INFO ;
typedef  TYPE_2__ TOOLTIPS_INFO ;
typedef  size_t INT ;

/* Variables and functions */
 int /*<<< orphan*/  GWL_STYLE ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  INFOTIPSIZE ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 scalar_t__ LPSTR_TEXTCALLBACKW ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__ const*,TYPE_1__*,char*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__ const*,TYPE_1__*,char*) ; 
 int /*<<< orphan*/  FUNC6 (char*,int /*<<< orphan*/ ,...) ; 
 int TTS_NOPREFIX ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 
 int /*<<< orphan*/  FUNC8 (char*,scalar_t__,int /*<<< orphan*/ ) ; 
 char* FUNC9 (char*,char) ; 

__attribute__((used)) static void
FUNC10 (const TOOLTIPS_INFO *infoPtr, INT nTool, WCHAR *buffer)
{
    TTTOOL_INFO *toolPtr = &infoPtr->tools[nTool];

    if (FUNC1(toolPtr->lpszText)) {
	/* load a resource */
	FUNC6("load res string %p %x\n",
	       toolPtr->hinst, FUNC2(toolPtr->lpszText));
	if (!FUNC3 (toolPtr->hinst, FUNC2(toolPtr->lpszText), buffer, INFOTIPSIZE))
	    buffer[0] = '\0';
    }
    else if (toolPtr->lpszText) {
	if (toolPtr->lpszText == LPSTR_TEXTCALLBACKW) {
	    if (toolPtr->bNotifyUnicode)
		FUNC5(infoPtr, toolPtr, buffer);
	    else
		FUNC4(infoPtr, toolPtr, buffer);
	}
	else {
	    /* the item is a usual (unicode) text */
	    FUNC8 (buffer, toolPtr->lpszText, INFOTIPSIZE);
	}
    }
    else {
	/* no text available */
        buffer[0] = '\0';
    }

    if (!(FUNC0(infoPtr->hwndSelf, GWL_STYLE) & TTS_NOPREFIX)) {
        WCHAR *ptrW;
        if ((ptrW = FUNC9(buffer, '\t')))
            *ptrW = 0;
    }

    FUNC6("%s\n", FUNC7(buffer));
}