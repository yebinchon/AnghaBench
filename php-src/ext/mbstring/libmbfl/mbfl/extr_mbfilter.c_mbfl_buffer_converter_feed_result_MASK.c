#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
struct TYPE_11__ {int /*<<< orphan*/  encoding; } ;
typedef  TYPE_1__ mbfl_string ;
struct TYPE_12__ {int /*<<< orphan*/  device; int /*<<< orphan*/  to; int /*<<< orphan*/ * filter2; int /*<<< orphan*/ * filter1; } ;
typedef  TYPE_2__ mbfl_buffer_converter ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_2__*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC2 (int /*<<< orphan*/ *,TYPE_1__*) ; 

mbfl_string *
FUNC3(mbfl_buffer_converter *convd, mbfl_string *string,
				  mbfl_string *result)
{
	if (convd == NULL || string == NULL || result == NULL) {
		return NULL;
	}
	FUNC0(convd, string);
	if (convd->filter1 != NULL) {
		FUNC1(convd->filter1);
	}
	if (convd->filter2 != NULL) {
		FUNC1(convd->filter2);
	}
	result->encoding = convd->to;
	return FUNC2(&convd->device, result);
}