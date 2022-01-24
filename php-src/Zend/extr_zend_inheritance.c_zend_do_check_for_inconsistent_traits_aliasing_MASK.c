#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {scalar_t__ method_name; } ;
struct TYPE_7__ {TYPE_1__ trait_method; scalar_t__ alias; } ;
typedef  TYPE_2__ zend_trait_alias ;
typedef  int /*<<< orphan*/  zend_string ;
struct TYPE_8__ {int /*<<< orphan*/  function_table; TYPE_2__** trait_aliases; } ;
typedef  TYPE_3__ zend_class_entry ;

/* Variables and functions */
 int /*<<< orphan*/  E_COMPILE_ERROR ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,...) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC4 (scalar_t__) ; 

__attribute__((used)) static void FUNC5(zend_class_entry *ce, zend_class_entry **aliases) /* {{{ */
{
	int i = 0;
	zend_trait_alias* cur_alias;
	zend_string* lc_method_name;

	if (ce->trait_aliases) {
		while (ce->trait_aliases[i]) {
			cur_alias = ce->trait_aliases[i];
			/** The trait for this alias has not been resolved, this means, this
				alias was not applied. Abort with an error. */
			if (!aliases[i]) {
				if (cur_alias->alias) {
					/** Plain old inconsistency/typo/bug */
					FUNC1(E_COMPILE_ERROR,
							   "An alias (%s) was defined for method %s(), but this method does not exist",
							   FUNC0(cur_alias->alias),
							   FUNC0(cur_alias->trait_method.method_name));
				} else {
					/** Here are two possible cases:
						1) this is an attempt to modify the visibility
						   of a method introduce as part of another alias.
						   Since that seems to violate the DRY principle,
						   we check against it and abort.
						2) it is just a plain old inconsitency/typo/bug
						   as in the case where alias is set. */

					lc_method_name = FUNC4(
						cur_alias->trait_method.method_name);
					if (FUNC2(&ce->function_table,
										 lc_method_name)) {
						FUNC3(lc_method_name, 0);
						FUNC1(E_COMPILE_ERROR,
								   "The modifiers for the trait alias %s() need to be changed in the same statement in which the alias is defined. Error",
								   FUNC0(cur_alias->trait_method.method_name));
					} else {
						FUNC3(lc_method_name, 0);
						FUNC1(E_COMPILE_ERROR,
								   "The modifiers of the trait method %s() are changed, but this method does not exist. Error",
								   FUNC0(cur_alias->trait_method.method_name));

					}
				}
			}
			i++;
		}
	}
}