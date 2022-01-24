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
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static zend_string *FUNC6(zend_string *type, zend_string *new_type) {
	zend_string *result;
	if (type == NULL) {
		return FUNC4(new_type);
	}

	// TODO: Switch to smart_str?
	result = FUNC3(FUNC0(type) + FUNC0(new_type) + 1, 0);
	FUNC2(FUNC1(result), FUNC1(type), FUNC0(type));
	FUNC1(result)[FUNC0(type)] = '|';
	FUNC2(FUNC1(result) + FUNC0(type) + 1, FUNC1(new_type), FUNC0(new_type));
	FUNC1(result)[FUNC0(type) + FUNC0(new_type) + 1] = '\0';
	FUNC5(type);
	return result;
}