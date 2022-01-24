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
typedef  int /*<<< orphan*/  zval ;
typedef  int /*<<< orphan*/  zend_bool ;
typedef  int /*<<< orphan*/  smart_str ;

/* Variables and functions */
 int /*<<< orphan*/  PHP_CLASS_ATTRIBUTES ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  class_name ; 
 int /*<<< orphan*/  incomplete_class ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char*,int) ; 

__attribute__((used)) static inline zend_bool FUNC6(smart_str *buf, zval *struc) /* {{{ */
{
	PHP_CLASS_ATTRIBUTES;

	FUNC1(struc);
	FUNC5(buf, "O:", 2);
	FUNC4(buf, FUNC2(class_name));
	FUNC5(buf, ":\"", 2);
	FUNC3(buf, class_name);
	FUNC5(buf, "\":", 2);
	FUNC0();
	return incomplete_class;
}