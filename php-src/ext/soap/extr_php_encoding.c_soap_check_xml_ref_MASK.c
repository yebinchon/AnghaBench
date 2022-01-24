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
typedef  int /*<<< orphan*/  zend_ulong ;
typedef  int zend_bool ;
typedef  scalar_t__ xmlNodePtr ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  ref_map ; 
 int /*<<< orphan*/ * FUNC4 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static zend_bool FUNC6(zval *data, xmlNodePtr node)
{
	zval *data_ptr;

	if (FUNC0(ref_map)) {
		if ((data_ptr = FUNC4(FUNC0(ref_map), (zend_ulong)node)) != NULL) {
			if (!FUNC3(data) ||
			    !FUNC3(data_ptr) ||
			    FUNC2(data) != FUNC2(data_ptr)) {
				FUNC5(data);
				FUNC1(data, data_ptr);
				return 1;
			}
		}
	}
	return 0;
}