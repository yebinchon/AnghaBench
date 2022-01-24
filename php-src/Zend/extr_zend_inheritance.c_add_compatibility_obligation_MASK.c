#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  zend_function ;
typedef  int /*<<< orphan*/  zend_class_entry ;
struct TYPE_4__ {int /*<<< orphan*/  const* parent_fn; int /*<<< orphan*/  const* child_fn; int /*<<< orphan*/  type; } ;
typedef  TYPE_1__ variance_obligation ;
typedef  int /*<<< orphan*/  HashTable ;

/* Variables and functions */
 int /*<<< orphan*/  OBLIGATION_COMPATIBILITY ; 
 TYPE_1__* FUNC0 (int) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,TYPE_1__*) ; 

__attribute__((used)) static void FUNC3(
		zend_class_entry *ce, const zend_function *child_fn, const zend_function *parent_fn) {
	HashTable *obligations = FUNC1(ce);
	variance_obligation *obligation = FUNC0(sizeof(variance_obligation));
	obligation->type = OBLIGATION_COMPATIBILITY;
	obligation->child_fn = child_fn;
	obligation->parent_fn = parent_fn;
	FUNC2(obligations, obligation);
}