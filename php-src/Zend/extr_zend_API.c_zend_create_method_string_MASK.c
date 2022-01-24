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

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *) ; 
 char* FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*,int) ; 
 int /*<<< orphan*/ * FUNC3 (int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static zend_string *FUNC4(zend_string *class_name, zend_string *method_name) {
	zend_string *callable_name = FUNC3(
		FUNC0(class_name) + FUNC0(method_name) + sizeof("::") - 1, 0);
	char *ptr = FUNC1(callable_name);
	FUNC2(ptr, FUNC1(class_name), FUNC0(class_name));
	ptr += FUNC0(class_name);
	FUNC2(ptr, "::", sizeof("::") - 1);
	ptr += sizeof("::") - 1;
	FUNC2(ptr, FUNC1(method_name), FUNC0(method_name) + 1);
	return callable_name;
}