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

/* Variables and functions */
 int CONT_ADDING ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int compl_col ; 
 int compl_cont_status ; 
 int /*<<< orphan*/  compl_length ; 

__attribute__((used)) static void
FUNC2()
{
    int	    i;

    /*
     * In insert mode: Delete the typed part.
     * In replace mode: Put the old characters back, if any.
     */
    i = compl_col + (compl_cont_status & CONT_ADDING ? compl_length : 0);
    FUNC0(i);

    /* TODO: is this sufficient for redrawing?  Redrawing everything causes
     * flicker, thus we can't do that. */
    FUNC1();
}