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
typedef  int uint32_t ;
struct strref {int dummy; } ;
struct cf_parser {int dummy; } ;

/* Variables and functions */
 int CALL_PARAM_IN ; 
 int CALL_PARAM_OUT ; 
 int /*<<< orphan*/  FUNC0 (struct cf_parser*,char*) ; 
 scalar_t__ FUNC1 (struct strref*,char*) ; 

__attribute__((used)) static bool FUNC2(struct cf_parser *cfp, struct strref *name,
				uint32_t *type)
{
	if (FUNC1(name, "in") == 0) {
		if (*type & CALL_PARAM_IN)
			FUNC0(cfp, "in");

		*type |= CALL_PARAM_IN;

	} else if (FUNC1(name, "out") == 0) {
		if (*type & CALL_PARAM_OUT)
			FUNC0(cfp, "out");

		*type |= CALL_PARAM_OUT;

	} else {
		return false;
	}

	return true;
}