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
 int FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

zval* FUNC5( zval* arg, zval *rv)
{
	zval arg_copy;
	zval* str    = NULL;

	if( FUNC1(arg) != IS_STRING )
	{

		int use_copy = FUNC3(arg, &arg_copy);

		if( use_copy )
		{
			str = FUNC2( &arg_copy, rv );
			FUNC4( &arg_copy );
		}
		else
		{
			str = FUNC2( arg, rv );
		}
	}
	else
	{
		FUNC0( arg );
	}

	return str;
}