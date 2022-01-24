#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  zend_object ;
struct TYPE_3__ {int /*<<< orphan*/  datef_data; scalar_t__ requested_locale; int /*<<< orphan*/  zo; } ;
typedef  TYPE_1__ IntlDateFormatter_object ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 TYPE_1__* FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

void FUNC4( zend_object *object )
{
	IntlDateFormatter_object* dfo = FUNC2(object);

	FUNC3( &dfo->zo );

	if (dfo->requested_locale) {
		FUNC1( dfo->requested_locale );
	}

	FUNC0( &dfo->datef_data );
}