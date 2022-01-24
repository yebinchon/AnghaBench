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
struct TYPE_4__ {scalar_t__ interp; } ;
typedef  TYPE_1__ plperl_interp_desc ;
typedef  int /*<<< orphan*/  HASH_SEQ_STATUS ;
typedef  int /*<<< orphan*/  Datum ;

/* Variables and functions */
 int /*<<< orphan*/  DEBUG3 ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__*) ; 
 int plperl_ending ; 
 scalar_t__ plperl_held_interp ; 
 int /*<<< orphan*/  plperl_interp_hash ; 

__attribute__((used)) static void
FUNC5(int code, Datum arg)
{
	HASH_SEQ_STATUS hash_seq;
	plperl_interp_desc *interp_desc;

	FUNC1(DEBUG3, "plperl_fini");

	/*
	 * Indicate that perl is terminating. Disables use of spi_* functions when
	 * running END/DESTROY code. See check_spi_usage_allowed(). Could be
	 * enabled in future, with care, using a transaction
	 * http://archives.postgresql.org/pgsql-hackers/2010-01/msg02743.php
	 */
	plperl_ending = true;

	/* Only perform perl cleanup if we're exiting cleanly */
	if (code)
	{
		FUNC1(DEBUG3, "plperl_fini: skipped");
		return;
	}

	/* Zap the "held" interpreter, if we still have it */
	FUNC4(&plperl_held_interp);

	/* Zap any fully-initialized interpreters */
	FUNC2(&hash_seq, plperl_interp_hash);
	while ((interp_desc = FUNC3(&hash_seq)) != NULL)
	{
		if (interp_desc->interp)
		{
			FUNC0(interp_desc);
			FUNC4(&interp_desc->interp);
		}
	}

	FUNC1(DEBUG3, "plperl_fini: done");
}