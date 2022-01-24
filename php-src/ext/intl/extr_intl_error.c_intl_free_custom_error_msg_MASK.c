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
struct TYPE_4__ {scalar_t__ free_custom_error_message; int /*<<< orphan*/ * custom_error_message; } ;
typedef  TYPE_1__ intl_error ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC1 () ; 

__attribute__((used)) static void FUNC2( intl_error* err )
{
	if( !err && !( err = FUNC1(  ) ) )
		return;

	if(err->free_custom_error_message ) {
		FUNC0( err->custom_error_message );
	}

	err->custom_error_message      = NULL;
	err->free_custom_error_message = 0;
}