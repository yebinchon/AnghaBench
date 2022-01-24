#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_15__   TYPE_4__ ;
typedef  struct TYPE_14__   TYPE_3__ ;
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
struct TYPE_14__ {int /*<<< orphan*/ * method_name; int /*<<< orphan*/ * class_name; } ;
struct TYPE_13__ {size_t num_excludes; TYPE_3__ trait_method; int /*<<< orphan*/ ** exclude_class_names; } ;
typedef  TYPE_2__ zend_trait_precedence ;
typedef  TYPE_3__ zend_trait_method_reference ;
typedef  int /*<<< orphan*/  zend_string ;
struct TYPE_15__ {size_t num_traits; int /*<<< orphan*/ * name; int /*<<< orphan*/  function_table; TYPE_1__** trait_aliases; TYPE_2__** trait_precedences; } ;
typedef  TYPE_4__ zend_class_entry ;
typedef  size_t uint32_t ;
struct TYPE_12__ {TYPE_3__ trait_method; } ;
typedef  int /*<<< orphan*/  HashTable ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  E_COMPILE_ERROR ; 
 int ZEND_FETCH_CLASS_NO_AUTOLOAD ; 
 int ZEND_FETCH_CLASS_TRAIT ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 void* FUNC2 (size_t,int) ; 
 size_t FUNC3 (TYPE_4__*,TYPE_4__*,TYPE_4__**) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,...) ; 
 TYPE_4__* FUNC5 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC10 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC11(zend_class_entry *ce, zend_class_entry **traits, HashTable ***exclude_tables_ptr, zend_class_entry ***aliases_ptr) /* {{{ */
{
	size_t i, j = 0;
	zend_trait_precedence **precedences;
	zend_trait_precedence *cur_precedence;
	zend_trait_method_reference *cur_method_ref;
	zend_string *lcname;
	HashTable **exclude_tables = NULL;
	zend_class_entry **aliases = NULL;
	zend_class_entry *trait;

	/* resolve class references */
	if (ce->trait_precedences) {
		exclude_tables = FUNC2(ce->num_traits, sizeof(HashTable*));
		i = 0;
		precedences = ce->trait_precedences;
		ce->trait_precedences = NULL;
		while ((cur_precedence = precedences[i])) {
			/** Resolve classes for all precedence operations. */
			cur_method_ref = &cur_precedence->trait_method;
			trait = FUNC5(cur_method_ref->class_name,
							ZEND_FETCH_CLASS_TRAIT|ZEND_FETCH_CLASS_NO_AUTOLOAD);
			if (!trait) {
				FUNC4(E_COMPILE_ERROR, "Could not find trait %s", FUNC1(cur_method_ref->class_name));
			}
			FUNC3(ce, trait, traits);

			/** Ensure that the preferred method is actually available. */
			lcname = FUNC10(cur_method_ref->method_name);
			if (!FUNC7(&trait->function_table, lcname)) {
				FUNC4(E_COMPILE_ERROR,
						   "A precedence rule was defined for %s::%s but this method does not exist",
						   FUNC1(trait->name),
						   FUNC1(cur_method_ref->method_name));
			}

			/** With the other traits, we are more permissive.
				We do not give errors for those. This allows to be more
				defensive in such definitions.
				However, we want to make sure that the insteadof declaration
				is consistent in itself.
			 */

			for (j = 0; j < cur_precedence->num_excludes; j++) {
				zend_string* class_name = cur_precedence->exclude_class_names[j];
				zend_class_entry *exclude_ce = FUNC5(class_name, ZEND_FETCH_CLASS_TRAIT |ZEND_FETCH_CLASS_NO_AUTOLOAD);
				uint32_t trait_num;

				if (!exclude_ce) {
					FUNC4(E_COMPILE_ERROR, "Could not find trait %s", FUNC1(class_name));
				}
				trait_num = FUNC3(ce, exclude_ce, traits);
				if (!exclude_tables[trait_num]) {
					FUNC0(exclude_tables[trait_num]);
					FUNC8(exclude_tables[trait_num], 0, NULL, NULL, 0);
				}
				if (FUNC6(exclude_tables[trait_num], lcname) == NULL) {
					FUNC4(E_COMPILE_ERROR, "Failed to evaluate a trait precedence (%s). Method of trait %s was defined to be excluded multiple times", FUNC1(precedences[i]->trait_method.method_name), FUNC1(exclude_ce->name));
				}

				/* make sure that the trait method is not from a class mentioned in
				 exclude_from_classes, for consistency */
				if (trait == exclude_ce) {
					FUNC4(E_COMPILE_ERROR,
							   "Inconsistent insteadof definition. "
							   "The method %s is to be used from %s, but %s is also on the exclude list",
							   FUNC1(cur_method_ref->method_name),
							   FUNC1(trait->name),
							   FUNC1(trait->name));
				}
			}
			FUNC9(lcname, 0);
			i++;
		}
		ce->trait_precedences = precedences;
	}

	if (ce->trait_aliases) {
		i = 0;
		while (ce->trait_aliases[i]) {
			i++;
		}
		aliases = FUNC2(i, sizeof(zend_class_entry*));
		i = 0;
		while (ce->trait_aliases[i]) {
			/** For all aliases with an explicit class name, resolve the class now. */
			if (ce->trait_aliases[i]->trait_method.class_name) {
				cur_method_ref = &ce->trait_aliases[i]->trait_method;
				trait = FUNC5(cur_method_ref->class_name, ZEND_FETCH_CLASS_TRAIT|ZEND_FETCH_CLASS_NO_AUTOLOAD);
				if (!trait) {
					FUNC4(E_COMPILE_ERROR, "Could not find trait %s", FUNC1(cur_method_ref->class_name));
				}
				FUNC3(ce, trait, traits);
				aliases[i] = trait;

				/** And, ensure that the referenced method is resolvable, too. */
				lcname = FUNC10(cur_method_ref->method_name);
				if (!FUNC7(&trait->function_table, lcname)) {
					FUNC4(E_COMPILE_ERROR, "An alias was defined for %s::%s but this method does not exist", FUNC1(trait->name), FUNC1(cur_method_ref->method_name));
				}
				FUNC9(lcname, 0);
			}
			i++;
		}
	}

	*exclude_tables_ptr = exclude_tables;
	*aliases_ptr = aliases;
}