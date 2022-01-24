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
typedef  int /*<<< orphan*/  WCHAR ;
struct TYPE_4__ {int dwStyle; int /*<<< orphan*/  hwndSelf; } ;
typedef  int /*<<< orphan*/ * LPCWSTR ;
typedef  int /*<<< orphan*/  DWORD ;
typedef  TYPE_1__ DATETIME_INFO ;
typedef  int /*<<< orphan*/  BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 int DTS_LONGDATEFORMAT ; 
 int DTS_TIMEFORMAT ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  LOCALE_SLONGDATE ; 
 int /*<<< orphan*/  LOCALE_SSHORTDATE ; 
 int /*<<< orphan*/  LOCALE_STIMEFORMAT ; 
 int /*<<< orphan*/  LOCALE_USER_DEFAULT ; 
 int /*<<< orphan*/  TRUE ; 

__attribute__((used)) static BOOL
FUNC4 (DATETIME_INFO *infoPtr, LPCWSTR format)
{
    WCHAR format_buf[80];

    if (!format) {
	DWORD format_item;

	if (infoPtr->dwStyle & DTS_LONGDATEFORMAT)
	    format_item = LOCALE_SLONGDATE;
	else if ((infoPtr->dwStyle & DTS_TIMEFORMAT) == DTS_TIMEFORMAT)
	    format_item = LOCALE_STIMEFORMAT;
        else /* DTS_SHORTDATEFORMAT */
	    format_item = LOCALE_SSHORTDATE;
	FUNC2(LOCALE_USER_DEFAULT, format_item, format_buf, FUNC0(format_buf));
	format = format_buf;
    }

    FUNC1 (infoPtr, format);
    FUNC3 (infoPtr->hwndSelf, NULL, TRUE);

    return TRUE;
}