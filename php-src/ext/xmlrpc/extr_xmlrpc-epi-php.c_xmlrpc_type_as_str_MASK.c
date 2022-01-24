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
typedef  size_t XMLRPC_VECTOR_TYPE ;
typedef  size_t XMLRPC_VALUE_TYPE ;

/* Variables and functions */
 size_t XMLRPC_TYPE_COUNT ; 
 char** FUNC0 () ; 
 size_t xmlrpc_vector_none ; 

const char* FUNC1(XMLRPC_VALUE_TYPE type, XMLRPC_VECTOR_TYPE vtype) /* {{{ */
{
	const char** str_mapping = FUNC0();

	if (vtype == xmlrpc_vector_none) {
		return str_mapping[type];
	} else {
		return str_mapping[XMLRPC_TYPE_COUNT + vtype];
	}
}