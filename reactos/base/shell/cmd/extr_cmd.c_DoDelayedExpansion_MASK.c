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
typedef  int /*<<< orphan*/  TCHAR ;
typedef  int /*<<< orphan*/ * LPTSTR ;

/* Variables and functions */
 int CMDLINE_LENGTH ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  bDelayedExpansion ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ *) ; 

LPTSTR
FUNC5(LPTSTR Line)
{
    TCHAR Buf1[CMDLINE_LENGTH];
    TCHAR Buf2[CMDLINE_LENGTH];

    /* First, substitute FOR variables */
    if (!FUNC0(Line, Buf1))
        return NULL;

    if (!bDelayedExpansion || !FUNC3(Buf1, FUNC2('!')))
        return FUNC4(Buf1);

    /* FIXME: Delayed substitutions actually aren't quite the same as
     * immediate substitutions. In particular, it's possible to escape
     * the exclamation point using ^. */
    if (!FUNC1(Buf1, Buf2, FUNC2('!')))
        return NULL;
    return FUNC4(Buf2);
}