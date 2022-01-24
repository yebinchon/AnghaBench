#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  zend_ulong ;
struct TYPE_3__ {int /*<<< orphan*/  ce_flags; } ;
typedef  TYPE_1__ zend_class_entry ;
typedef  int /*<<< orphan*/  HashTable ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ZEND_ACC_LINKED ; 
 int /*<<< orphan*/  ZEND_ACC_UNRESOLVED_VARIANCE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  check_variance_obligation ; 
 int /*<<< orphan*/  delayed_variance_obligations ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC6(zend_class_entry *ce) {
	HashTable *all_obligations = FUNC0(delayed_variance_obligations), *obligations;
	zend_ulong num_key = (zend_ulong) (uintptr_t) ce;

	FUNC1(all_obligations != NULL);
	obligations = FUNC4(all_obligations, num_key);
	FUNC1(obligations != NULL);

	FUNC2(obligations, check_variance_obligation);
	if (FUNC5(obligations) == 0) {
		ce->ce_flags &= ~ZEND_ACC_UNRESOLVED_VARIANCE;
		ce->ce_flags |= ZEND_ACC_LINKED;
		FUNC3(all_obligations, num_key);
	}
}