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
typedef  int /*<<< orphan*/  XMLRPC_VALUE_TYPE ;

/* Variables and functions */
 int XMLRPC_TYPE_COUNT ; 
 char** FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (char const*,char const*) ; 
 int /*<<< orphan*/  xmlrpc_none ; 

XMLRPC_VALUE_TYPE FUNC2(const char* str) /* {{{ */
{
	const char** str_mapping = FUNC0();
	int i;

	if (str) {
		for (i = 0; i < XMLRPC_TYPE_COUNT; i++) {
			if (!FUNC1(str_mapping[i], str)) {
				return (XMLRPC_VALUE_TYPE) i;
			}
		}
	}
	return xmlrpc_none;
}