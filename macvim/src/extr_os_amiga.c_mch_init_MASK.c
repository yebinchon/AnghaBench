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
struct IntuitionBase {int dummy; } ;
typedef  int /*<<< orphan*/  UBYTE ;
typedef  scalar_t__ BPTR ;

/* Variables and functions */
 int Columns ; 
 scalar_t__ Enable_Abort ; 
 scalar_t__ FUNC0 () ; 
 struct IntuitionBase* IntuitionBase ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,long) ; 
 scalar_t__ FUNC3 () ; 
 int Rows ; 
 char* FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 () ; 
 scalar_t__ raw_in ; 
 scalar_t__ raw_out ; 
 int /*<<< orphan*/ * wb_window ; 

void
FUNC8()
{
    static char	    intlibname[] = "intuition.library";

#ifdef AZTEC_C
    Enable_Abort = 0;		/* disallow vim to be aborted */
#endif
    Columns = 80;
    Rows = 24;

    /*
     * Set input and output channels, unless we have opened our own window
     */
    if (raw_in == (BPTR)NULL)
    {
	raw_in = FUNC0();
	raw_out = FUNC3();
	/*
	 * If Input() is not interactive, then Output() will be (because of
	 * check in mch_check_win()).  Used for "Vim -".
	 * Also check the other way around, for "Vim -h | more".
	 */
	if (!FUNC1(raw_in))
	    raw_in = raw_out;
	else if (!FUNC1(raw_out))
	    raw_out = raw_in;
    }

    FUNC7();

    wb_window = NULL;
#ifndef __amigaos4__
    if ((IntuitionBase = (struct IntuitionBase *)
				FUNC2((UBYTE *)intlibname, 0L)) == NULL)
    {
	FUNC5(FUNC4("cannot open "));
	FUNC5(intlibname);
	FUNC5("!?\n");
	FUNC6(3);
    }
#endif
}