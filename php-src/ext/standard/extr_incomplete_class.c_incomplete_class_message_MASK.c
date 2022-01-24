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
typedef  int /*<<< orphan*/  zend_object ;

/* Variables and functions */
 int /*<<< orphan*/  INCOMPLETE_CLASS_MSG ; 
 char* FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(zend_object *object, int error_type)
{
	zend_string *class_name;

	class_name = FUNC2(object);

	if (class_name) {
		FUNC1(NULL, error_type, INCOMPLETE_CLASS_MSG, FUNC0(class_name));
		FUNC3(class_name, 0);
	} else {
		FUNC1(NULL, error_type, INCOMPLETE_CLASS_MSG, "unknown");
	}
}