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
typedef  int /*<<< orphan*/  zend_string ;
struct TYPE_4__ {scalar_t__ custom_error_message; int /*<<< orphan*/  code; } ;
typedef  TYPE_1__ intl_error ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 () ; 
 TYPE_1__* FUNC1 () ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ ,char*,char const*,...) ; 
 char* FUNC3 (int /*<<< orphan*/ ) ; 

zend_string * FUNC4( intl_error* err )
{
	const char *uErrorName = NULL;
	zend_string *errMessage = 0;

	if( !err && !( err = FUNC1(  ) ) )
		return FUNC0();

	uErrorName = FUNC3( err->code );

	/* Format output string */
	if( err->custom_error_message )
	{
		errMessage = FUNC2(0, "%s: %s", err->custom_error_message, uErrorName );
	}
	else
	{
		errMessage = FUNC2(0, "%s", uErrorName );
	}

	return errMessage;
}