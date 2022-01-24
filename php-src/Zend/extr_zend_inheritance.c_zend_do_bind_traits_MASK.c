#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_21__   TYPE_2__ ;
typedef  struct TYPE_20__   TYPE_1__ ;

/* Type definitions */
struct TYPE_21__ {scalar_t__ num_traits; int ce_flags; int /*<<< orphan*/  name; TYPE_1__* trait_names; } ;
typedef  TYPE_2__ zend_class_entry ;
typedef  size_t uint32_t ;
struct TYPE_20__ {int /*<<< orphan*/  lc_name; int /*<<< orphan*/  name; } ;
typedef  TYPE_2__ HashTable ;

/* Variables and functions */
 int /*<<< orphan*/  E_ERROR ; 
 scalar_t__ FUNC0 (int) ; 
 int ZEND_ACC_TRAIT ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  ZEND_FETCH_CLASS_TRAIT ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__**) ; 
 TYPE_2__** FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*,TYPE_2__**) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*,TYPE_2__**,TYPE_2__**,TYPE_2__**) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__*,TYPE_2__**) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_2__*,TYPE_2__**,TYPE_2__***,TYPE_2__***) ; 

__attribute__((used)) static void FUNC11(zend_class_entry *ce) /* {{{ */
{
	HashTable **exclude_tables;
	zend_class_entry **aliases;
	zend_class_entry **traits, *trait;
	uint32_t i, j;

	FUNC1(ce->num_traits > 0);

	traits = FUNC4(sizeof(zend_class_entry*) * ce->num_traits);

	for (i = 0; i < ce->num_traits; i++) {
		trait = FUNC9(ce->trait_names[i].name,
			ce->trait_names[i].lc_name, ZEND_FETCH_CLASS_TRAIT);
		if (FUNC0(trait == NULL)) {
			return;
		}
		if (FUNC0(!(trait->ce_flags & ZEND_ACC_TRAIT))) {
			FUNC8(E_ERROR, "%s cannot use %s - it is not a trait", FUNC2(ce->name), FUNC2(trait->name));
			return;
		}
		for (j = 0; j < i; j++) {
			if (traits[j] == trait) {
				/* skip duplications */
				trait = NULL;
				break;
			}
		}
		traits[i] = trait;
	}

	/* complete initialization of trait strutures in ce */
	FUNC10(ce, traits, &exclude_tables, &aliases);

	/* first care about all methods to be flattened into the class */
	FUNC6(ce, traits, exclude_tables, aliases);

	/* Aliases which have not been applied indicate typos/bugs. */
	FUNC5(ce, aliases);

	if (aliases) {
		FUNC3(aliases);
	}

	if (exclude_tables) {
		FUNC3(exclude_tables);
	}

	/* then flatten the properties into it, to, mostly to notfiy developer about problems */
	FUNC7(ce, traits);

	FUNC3(traits);
}