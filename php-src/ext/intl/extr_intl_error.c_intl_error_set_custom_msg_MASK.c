#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int free_custom_error_message; char* custom_error_message; } ;
typedef  TYPE_1__ intl_error ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  IntlException_ce_ptr ; 
 int /*<<< orphan*/  error_level ; 
 char* FUNC1 (char const*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 TYPE_1__* FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,scalar_t__,char*,char const*) ; 
 int /*<<< orphan*/  use_exceptions ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,char const*) ; 

void FUNC6( intl_error* err, const char* msg, int copyMsg )
{
	if( !msg )
		return;

	if( !err ) {
		if( FUNC0( error_level ) )
			FUNC4( NULL, FUNC0( error_level ), "%s", msg );
		if( FUNC0( use_exceptions ) )
			FUNC5( IntlException_ce_ptr, 0, "%s", msg );
	}
	if( !err && !( err = FUNC3(  ) ) )
		return;

	/* Free previous message if any */
	FUNC2( err );

	/* Mark message copied if any */
	err->free_custom_error_message = copyMsg;

	/* Set user's error text message */
	err->custom_error_message = copyMsg ? FUNC1( msg ) : (char *) msg;
}