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
typedef  int /*<<< orphan*/  smart_str ;

/* Variables and functions */
 int FAILURE ; 
 int /*<<< orphan*/  U_ILLEGAL_ARGUMENT_ERROR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC3( int result, smart_str* loc_name)
{
	FUNC0( NULL );
	if( result == FAILURE) {
		FUNC1( NULL, U_ILLEGAL_ARGUMENT_ERROR,
			 "locale_compose: parameter array element is not a string", 0 );
		FUNC2(loc_name);
		return 0;
	}
	return 1;
}