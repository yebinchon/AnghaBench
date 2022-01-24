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
struct TYPE_4__ {scalar_t__ keyword; scalar_t__ is_libpq_opt; } ;
typedef  TYPE_1__ PgFdwOption ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 TYPE_1__* postgres_fdw_options ; 
 scalar_t__ FUNC1 (scalar_t__,char const*) ; 

__attribute__((used)) static bool
FUNC2(const char *keyword)
{
	PgFdwOption *opt;

	FUNC0(postgres_fdw_options);	/* must be initialized already */

	for (opt = postgres_fdw_options; opt->keyword; opt++)
	{
		if (opt->is_libpq_opt && FUNC1(opt->keyword, keyword) == 0)
			return true;
	}

	return false;
}