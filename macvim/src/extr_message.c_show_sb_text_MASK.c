#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/ * sb_prev; } ;
typedef  TYPE_1__ msgchunk_T ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC0 (char) ; 
 int /*<<< orphan*/  last_msgchunk ; 
 TYPE_1__* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

void
FUNC4()
{
    msgchunk_T	*mp;

    /* Only show something if there is more than one line, otherwise it looks
     * weird, typing a command without output results in one line. */
    mp = FUNC1(last_msgchunk);
    if (mp == NULL || mp->sb_prev == NULL)
	FUNC2();
    else
    {
	FUNC0('G');
	FUNC3(FALSE);
    }
}