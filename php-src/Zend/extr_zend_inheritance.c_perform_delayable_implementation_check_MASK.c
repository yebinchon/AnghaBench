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
typedef  int /*<<< orphan*/  zend_function ;
typedef  int /*<<< orphan*/  zend_class_entry ;
typedef  scalar_t__ inheritance_status ;

/* Variables and functions */
 scalar_t__ FUNC0 (int) ; 
 scalar_t__ INHERITANCE_ERROR ; 
 scalar_t__ INHERITANCE_SUCCESS ; 
 scalar_t__ INHERITANCE_UNRESOLVED ; 
 scalar_t__ FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/  const*,int /*<<< orphan*/  const*,scalar_t__) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/  const*,int /*<<< orphan*/  const*) ; 

__attribute__((used)) static void FUNC6(
		zend_class_entry *ce, const zend_function *fe,
		const zend_function *proto)
{
	inheritance_status status = FUNC5(fe, proto);
	if (FUNC1(status != INHERITANCE_SUCCESS)) {
		if (FUNC0(status == INHERITANCE_UNRESOLVED)) {
			FUNC3(ce, fe, proto);
		} else {
			FUNC2(status == INHERITANCE_ERROR);
			FUNC4(fe, proto, status);
		}
	}
}