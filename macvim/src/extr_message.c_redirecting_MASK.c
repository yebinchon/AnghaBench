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
 scalar_t__ NUL ; 
 scalar_t__* p_vfile ; 
 int /*<<< orphan*/ * redir_fd ; 
 scalar_t__ redir_reg ; 
 scalar_t__ redir_vname ; 

int
FUNC0()
{
    return redir_fd != NULL || *p_vfile != NUL
#ifdef FEAT_EVAL
			  || redir_reg || redir_vname
#endif
				       ;
}