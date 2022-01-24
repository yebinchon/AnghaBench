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
struct strref {int dummy; } ;
typedef  enum call_param_type { ____Placeholder_call_param_type } call_param_type ;

/* Variables and functions */
 int CALL_PARAM_TYPE_BOOL ; 
 int CALL_PARAM_TYPE_FLOAT ; 
 int CALL_PARAM_TYPE_INT ; 
 int CALL_PARAM_TYPE_PTR ; 
 int CALL_PARAM_TYPE_STRING ; 
 int CALL_PARAM_TYPE_VOID ; 
 scalar_t__ FUNC0 (struct strref*,char*) ; 

__attribute__((used)) static bool FUNC1(struct strref *ref, enum call_param_type *type,
		     bool is_return)
{
	if (FUNC0(ref, "int") == 0)
		*type = CALL_PARAM_TYPE_INT;
	else if (FUNC0(ref, "float") == 0)
		*type = CALL_PARAM_TYPE_FLOAT;
	else if (FUNC0(ref, "bool") == 0)
		*type = CALL_PARAM_TYPE_BOOL;
	else if (FUNC0(ref, "ptr") == 0)
		*type = CALL_PARAM_TYPE_PTR;
	else if (FUNC0(ref, "string") == 0)
		*type = CALL_PARAM_TYPE_STRING;
	else if (is_return && FUNC0(ref, "void") == 0)
		*type = CALL_PARAM_TYPE_VOID;
	else
		return false;

	return true;
}