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
typedef  int /*<<< orphan*/  zend_string ;
typedef  int zend_bool ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/  const*) ; 
 char const* FUNC1 (int /*<<< orphan*/  const*) ; 
 char* FUNC2 (char const*,char,int) ; 

__attribute__((used)) static zend_bool FUNC3(const zend_string *name, const char **result, size_t *result_len) /* {{{ */
{
	const char *ns_separator = FUNC2(FUNC1(name), '\\', FUNC0(name));
	if (ns_separator != NULL) {
		*result = ns_separator + 1;
		*result_len = FUNC1(name) + FUNC0(name) - *result;
		return 1;
	}

	return 0;
}