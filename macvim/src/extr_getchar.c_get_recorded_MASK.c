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
typedef  scalar_t__ char_u ;

/* Variables and functions */
 scalar_t__ Ctrl_O ; 
 scalar_t__ NUL ; 
 size_t FUNC0 (scalar_t__*) ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__* FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int last_recorded_len ; 
 int /*<<< orphan*/  recordbuff ; 
 scalar_t__ restart_edit ; 

char_u *
FUNC3()
{
    char_u	*p;
    size_t	len;

    p = FUNC2(&recordbuff, TRUE);
    FUNC1(&recordbuff);

    /*
     * Remove the characters that were added the last time, these must be the
     * (possibly mapped) characters that stopped the recording.
     */
    len = FUNC0(p);
    if ((int)len >= last_recorded_len)
    {
	len -= last_recorded_len;
	p[len] = NUL;
    }

    /*
     * When stopping recording from Insert mode with CTRL-O q, also remove the
     * CTRL-O.
     */
    if (len > 0 && restart_edit != 0 && p[len - 1] == Ctrl_O)
	p[len - 1] = NUL;

    return (p);
}