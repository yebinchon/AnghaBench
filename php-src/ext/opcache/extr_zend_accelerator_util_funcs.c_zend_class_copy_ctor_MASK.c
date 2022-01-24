#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_4__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  zval ;
struct TYPE_10__ {int num_excludes; } ;
typedef  TYPE_1__ zend_trait_precedence ;
typedef  TYPE_1__ zend_trait_alias ;
typedef  int /*<<< orphan*/  zend_string ;
typedef  TYPE_1__ zend_class_name ;
struct TYPE_11__ {int refcount; int ce_flags; int default_properties_count; int default_static_members_count; int num_interfaces; int num_traits; TYPE_1__** trait_precedences; TYPE_1__** trait_aliases; TYPE_1__* trait_names; struct TYPE_11__** interfaces; TYPE_1__* interface_names; struct TYPE_11__** properties_info_table; int /*<<< orphan*/  constants_table; int /*<<< orphan*/  properties_info; int /*<<< orphan*/ * default_static_members_table; int /*<<< orphan*/  static_members_table; struct TYPE_11__* parent; int /*<<< orphan*/  function_table; int /*<<< orphan*/ * default_properties_table; } ;
typedef  TYPE_4__ zend_class_entry ;
typedef  size_t uint32_t ;

/* Variables and functions */
 void* FUNC0 (TYPE_4__*) ; 
 scalar_t__ FUNC1 (TYPE_4__*) ; 
 int ZEND_ACC_LINKED ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  __call ; 
 int /*<<< orphan*/  __callstatic ; 
 int /*<<< orphan*/  __debugInfo ; 
 int /*<<< orphan*/  __get ; 
 int /*<<< orphan*/  __isset ; 
 int /*<<< orphan*/  __set ; 
 int /*<<< orphan*/  __tostring ; 
 int /*<<< orphan*/  __unset ; 
 int /*<<< orphan*/  clone ; 
 int /*<<< orphan*/  constructor ; 
 int /*<<< orphan*/  destructor ; 
 void* FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*,TYPE_1__*,int) ; 
 int /*<<< orphan*/  serialize_func ; 
 int /*<<< orphan*/  unserialize_func ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC12(zend_class_entry **pce)
{
	zend_class_entry *ce = *pce;
	zval *src, *dst, *end;

	*pce = ce = FUNC0(ce);
	ce->refcount = 1;

	if ((ce->ce_flags & ZEND_ACC_LINKED) && FUNC1(ce->parent)) {
		ce->parent = FUNC0(ce->parent);
	}

	if (ce->default_properties_table) {
		dst = FUNC6(sizeof(zval) * ce->default_properties_count);
		src = ce->default_properties_table;
		end = src + ce->default_properties_count;
		ce->default_properties_table = dst;
		for (; src != end; src++, dst++) {
			FUNC4(dst, src);
		}
	}

	FUNC9(&ce->function_table);

	/* static members */
	if (ce->default_static_members_table) {
		int i, end;
		zend_class_entry *parent = !(ce->ce_flags & ZEND_ACC_LINKED) ? NULL : ce->parent;

		dst = FUNC6(sizeof(zval) * ce->default_static_members_count);
		src = ce->default_static_members_table;
		ce->default_static_members_table = dst;
		i = ce->default_static_members_count - 1;

		/* Copy static properties in this class */
		end = parent ? parent->default_static_members_count : 0;
		for (; i >= end; i--) {
			zval *p = &dst[i];
			FUNC3(p, &src[i]);
		}

		/* Create indirections to static properties from parent classes */
		while (parent && parent->default_static_members_table) {
			end = parent->parent ? parent->parent->default_static_members_count : 0;
			for (; i >= end; i--) {
				zval *p = &dst[i];
				FUNC5(p, &parent->default_static_members_table[i]);
			}

			parent = parent->parent;
		}
	}
	FUNC2(ce->static_members_table, &ce->default_static_members_table);

	/* properties_info */
	FUNC10(&ce->properties_info);

	/* constants table */
	FUNC8(&ce->constants_table);

	if (ce->properties_info_table) {
		int i;
		ce->properties_info_table = FUNC0(*ce->properties_info_table);
		for (i = 0; i < ce->default_properties_count; i++) {
			if (FUNC1(ce->properties_info_table[i])) {
				ce->properties_info_table[i] = FUNC0(ce->properties_info_table[i]);
			}
		}
	}

	if (ce->num_interfaces) {
		zend_class_name *interface_names;

		if (!(ce->ce_flags & ZEND_ACC_LINKED)) {
			interface_names = FUNC6(sizeof(zend_class_name) * ce->num_interfaces);
			FUNC7(interface_names, ce->interface_names, sizeof(zend_class_name) * ce->num_interfaces);
			ce->interface_names = interface_names;
		} else {
			zend_class_entry **interfaces = FUNC6(sizeof(zend_class_entry*) * ce->num_interfaces);
			uint32_t i;

			for (i = 0; i < ce->num_interfaces; i++) {
				if (FUNC1(ce->interfaces[i])) {
					interfaces[i] = FUNC0(ce->interfaces[i]);
				} else {
					interfaces[i] = ce->interfaces[i];
				}
			}
			ce->interfaces = interfaces;
		}
	}

	FUNC11(constructor);
	FUNC11(destructor);
	FUNC11(clone);
	FUNC11(__get);
	FUNC11(__set);
	FUNC11(__call);
/* 5.1 stuff */
	FUNC11(serialize_func);
	FUNC11(unserialize_func);
	FUNC11(__isset);
	FUNC11(__unset);
/* 5.2 stuff */
	FUNC11(__tostring);

/* 5.3 stuff */
	FUNC11(__callstatic);
	FUNC11(__debugInfo);

/* 5.4 traits */
	if (ce->num_traits) {
		zend_class_name *trait_names = FUNC6(sizeof(zend_class_name) * ce->num_traits);

		FUNC7(trait_names, ce->trait_names, sizeof(zend_class_name) * ce->num_traits);
		ce->trait_names = trait_names;

		if (ce->trait_aliases) {
			zend_trait_alias **trait_aliases;
			int i = 0;

			while (ce->trait_aliases[i]) {
				i++;
			}
			trait_aliases = FUNC6(sizeof(zend_trait_alias*) * (i + 1));
			i = 0;
			while (ce->trait_aliases[i]) {
				trait_aliases[i] = FUNC6(sizeof(zend_trait_alias));
				FUNC7(trait_aliases[i], ce->trait_aliases[i], sizeof(zend_trait_alias));
				i++;
			}
			trait_aliases[i] = NULL;
			ce->trait_aliases = trait_aliases;
		}

		if (ce->trait_precedences) {
			zend_trait_precedence **trait_precedences;
			int i = 0;

			while (ce->trait_precedences[i]) {
				i++;
			}
			trait_precedences = FUNC6(sizeof(zend_trait_precedence*) * (i + 1));
			i = 0;
			while (ce->trait_precedences[i]) {
				trait_precedences[i] = FUNC6(sizeof(zend_trait_precedence) + (ce->trait_precedences[i]->num_excludes - 1) * sizeof(zend_string*));
				FUNC7(trait_precedences[i], ce->trait_precedences[i], sizeof(zend_trait_precedence) + (ce->trait_precedences[i]->num_excludes - 1) * sizeof(zend_string*));
				i++;
			}
			trait_precedences[i] = NULL;
			ce->trait_precedences = trait_precedences;
		}
	}
}