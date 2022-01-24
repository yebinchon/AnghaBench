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
typedef  int /*<<< orphan*/  txt ;
typedef  char WCHAR ;
struct TYPE_4__ {int Flags; int Base; int dwStyle; int /*<<< orphan*/  Buddy; int /*<<< orphan*/  CurVal; } ;
typedef  TYPE_1__ UPDOWN_INFO ;
typedef  int BOOL ;

/* Variables and functions */
 int FUNC0 (char*) ; 
 int FALSE ; 
 int FLAG_BUDDYINT ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ LB_ERR ; 
 int /*<<< orphan*/  LB_SETCURSEL ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC5 (char*,int /*<<< orphan*/ ) ; 
 int UDS_NOTHOUSANDS ; 
 char FUNC6 () ; 
 scalar_t__ FUNC7 (TYPE_1__ const*) ; 
 scalar_t__ FUNC8 (char*,char*) ; 
 int /*<<< orphan*/  FUNC9 (char*,char*,int) ; 
 int FUNC10 (char*,char const*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static BOOL FUNC11 (const UPDOWN_INFO *infoPtr)
{
    static const WCHAR fmt_hex[] = { '0', 'x', '%', '0', '4', 'X', 0 };
    static const WCHAR fmt_dec_oct[] = { '%', 'd', '\0' };
    const WCHAR *fmt;
    WCHAR txt[20], txt_old[20] = { 0 };
    int len;

    if (!((infoPtr->Flags & FLAG_BUDDYINT) && FUNC2(infoPtr->Buddy)))
        return FALSE;

    FUNC5("set new value(%d) to buddy.\n", infoPtr->CurVal);

    /*if the buddy is a list window, we must set curr index */
    if (FUNC7(infoPtr)) {
        return FUNC3(infoPtr->Buddy, LB_SETCURSEL, infoPtr->CurVal, 0) != LB_ERR;
    }

    /* Regular window, so set caption to the number */
    fmt = (infoPtr->Base == 16) ? fmt_hex : fmt_dec_oct;
    len = FUNC10(txt, fmt, infoPtr->CurVal);


    /* Do thousands separation if necessary */
    if ((infoPtr->Base == 10) && !(infoPtr->dwStyle & UDS_NOTHOUSANDS) && (len > 3)) {
        WCHAR tmp[FUNC0(txt)], *src = tmp, *dst = txt;
        WCHAR sep = FUNC6();
	int start = len % 3;

	FUNC9(tmp, txt, sizeof(txt));
	if (start == 0) start = 3;
	dst += start;
	src += start;
        for (len=0; *src; len++) {
	    if (len % 3 == 0) *dst++ = sep;
	    *dst++ = *src++;
        }
        *dst = 0;
    }

    /* if nothing changed exit earlier */
    FUNC1(infoPtr->Buddy, txt_old, FUNC0(txt_old));
    if (FUNC8(txt_old, txt) == 0) return FALSE;

    return FUNC4(infoPtr->Buddy, txt);
}