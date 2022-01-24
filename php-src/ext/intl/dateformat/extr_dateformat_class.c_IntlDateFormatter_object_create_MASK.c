#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int /*<<< orphan*/ * handlers; } ;
typedef  TYPE_1__ zend_object ;
typedef  int /*<<< orphan*/  zend_class_entry ;
struct TYPE_8__ {int calendar; TYPE_1__ zo; int /*<<< orphan*/ * requested_locale; scalar_t__ time_type; scalar_t__ date_type; int /*<<< orphan*/  datef_data; } ;
typedef  TYPE_2__ IntlDateFormatter_object ;

/* Variables and functions */
 int /*<<< orphan*/  IntlDateFormatter_handlers ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 TYPE_2__* FUNC2 (int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int /*<<< orphan*/ *) ; 

zend_object *FUNC4(zend_class_entry *ce)
{
	IntlDateFormatter_object*     intern;

	intern = FUNC2(sizeof(IntlDateFormatter_object), ce);
	FUNC0( &intern->datef_data );
	FUNC3( &intern->zo, ce );
	FUNC1(&intern->zo, ce);
	intern->date_type			= 0;
	intern->time_type			= 0;
	intern->calendar			= -1;
	intern->requested_locale	= NULL;

	intern->zo.handlers = &IntlDateFormatter_handlers;

	return &intern->zo;
}