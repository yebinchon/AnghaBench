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
typedef  int zend_bool ;
typedef  int /*<<< orphan*/  HashTable ;

/* Variables and functions */
 scalar_t__ IS_ARRAY ; 
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static zend_bool FUNC4(HashTable *ht, zval *ref) {
	if (FUNC1(ref) != 1) {
		return 0;
	}

	/* Directly self-referential arrays are treated as proper references
	 * in zend_array_dup() despite rc=1. */
	return FUNC3(FUNC2(ref)) != IS_ARRAY || FUNC0(FUNC2(ref)) != ht;
}