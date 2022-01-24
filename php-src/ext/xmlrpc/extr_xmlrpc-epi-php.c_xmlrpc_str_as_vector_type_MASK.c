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
typedef  int /*<<< orphan*/  XMLRPC_VECTOR_TYPE ;

/* Variables and functions */
 int TYPE_STR_MAP_SIZE ; 
 int XMLRPC_TYPE_COUNT ; 
 char** FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (char const*,char const*) ; 
 int /*<<< orphan*/  xmlrpc_vector_none ; 

XMLRPC_VECTOR_TYPE FUNC2(const char* str) /* {{{ */
{
	const char** str_mapping = FUNC0();
	int i;

	if (str) {
		for (i = XMLRPC_TYPE_COUNT; i < TYPE_STR_MAP_SIZE; i++) {
			if (!FUNC1(str_mapping[i], str)) {
				return (XMLRPC_VECTOR_TYPE) (i - XMLRPC_TYPE_COUNT);
			}
		}
	}
	return xmlrpc_vector_none;
}