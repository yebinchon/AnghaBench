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
typedef  int /*<<< orphan*/  zval ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ IS_STRING ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

zval* FUNC5( zval* arg, zval *rv )
{
	zval* n_arg = NULL;

	if( FUNC1( arg ) != IS_STRING )
	{
		/* If its not a string then nothing to do.
		 * Return original arg.
		 */
		FUNC0( arg );
	}

	/* Try convert to number. */
	n_arg = FUNC2( arg, rv );

	if( n_arg == arg )
	{
		/* Conversion to number failed. */
		FUNC4( n_arg );

		/* Convert string to utf8. */
		n_arg = FUNC3( arg, rv );
	}

	return n_arg;
}