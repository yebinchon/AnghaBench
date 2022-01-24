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
typedef  scalar_t__ zend_ulong ;
struct TYPE_3__ {int /*<<< orphan*/  ce_flags; } ;
typedef  TYPE_1__ zend_class_entry ;
typedef  int /*<<< orphan*/  HashTable ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ZEND_ACC_UNRESOLVED_VARIANCE ; 
 int /*<<< orphan*/  delayed_variance_obligations ; 
 int /*<<< orphan*/  variance_obligation_dtor ; 
 int /*<<< orphan*/  variance_obligation_ht_dtor ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,scalar_t__,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static HashTable *FUNC5(zend_class_entry *ce) {
	HashTable *ht;
	zend_ulong key;
	if (!FUNC1(delayed_variance_obligations)) {
		FUNC0(FUNC1(delayed_variance_obligations));
		FUNC4(FUNC1(delayed_variance_obligations), 0, NULL, variance_obligation_ht_dtor, 0);
	}

	key = (zend_ulong) (uintptr_t) ce;
	ht = FUNC3(FUNC1(delayed_variance_obligations), key);
	if (ht) {
		return ht;
	}

	FUNC0(ht);
	FUNC4(ht, 0, NULL, variance_obligation_dtor, 0);
	FUNC2(FUNC1(delayed_variance_obligations), key, ht);
	ce->ce_flags |= ZEND_ACC_UNRESOLVED_VARIANCE;
	return ht;
}