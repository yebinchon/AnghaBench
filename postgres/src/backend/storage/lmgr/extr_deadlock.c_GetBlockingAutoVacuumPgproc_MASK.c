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
typedef  int /*<<< orphan*/  PGPROC ;

/* Variables and functions */
 int /*<<< orphan*/ * blocking_autovacuum_proc ; 

PGPROC *
FUNC0(void)
{
	PGPROC	   *ptr;

	ptr = blocking_autovacuum_proc;
	blocking_autovacuum_proc = NULL;

	return ptr;
}