#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  zval ;
struct TYPE_8__ {size_t num_traits; TYPE_1__* trait_names; } ;
typedef  TYPE_2__ zend_class_entry ;
typedef  size_t uint32_t ;
struct TYPE_7__ {int /*<<< orphan*/  lc_name; int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 int /*<<< orphan*/  ZEND_FETCH_CLASS_TRAIT ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,TYPE_2__*,int,int) ; 
 TYPE_2__* FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void FUNC3(zval *list, zend_class_entry * pce, int allow, int ce_flags)
{
	uint32_t num_traits;
	zend_class_entry *trait;

	for (num_traits = 0; num_traits < pce->num_traits; num_traits++) {
		trait = FUNC2(pce->trait_names[num_traits].name,
			pce->trait_names[num_traits].lc_name, ZEND_FETCH_CLASS_TRAIT);
		FUNC0(trait);
		FUNC1(list, trait, allow, ce_flags);
	}
}