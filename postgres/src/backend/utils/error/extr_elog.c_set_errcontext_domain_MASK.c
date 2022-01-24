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
struct TYPE_3__ {char const* context_domain; } ;
typedef  TYPE_1__ ErrorData ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 char const* FUNC1 (char*) ; 
 TYPE_1__* errordata ; 
 size_t errordata_stack_depth ; 

int
FUNC2(const char *domain)
{
	ErrorData  *edata = &errordata[errordata_stack_depth];

	/* we don't bother incrementing recursion_depth */
	FUNC0();

	/* the default text domain is the backend's */
	edata->context_domain = domain ? domain : FUNC1("postgres");

	return 0;					/* return value does not matter */
}