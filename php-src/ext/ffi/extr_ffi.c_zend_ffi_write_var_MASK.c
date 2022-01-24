#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  zval ;
typedef  int /*<<< orphan*/  zend_string ;
typedef  int /*<<< orphan*/  zend_object ;
struct TYPE_4__ {scalar_t__ kind; int /*<<< orphan*/  type; int /*<<< orphan*/  addr; scalar_t__ is_const; } ;
typedef  TYPE_1__ zend_ffi_symbol ;
struct TYPE_5__ {scalar_t__ symbols; } ;
typedef  TYPE_2__ zend_ffi ;

/* Variables and functions */
 scalar_t__ ZEND_FFI_SYM_VAR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  zend_ffi_exception_ce ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC3 (scalar_t__,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static zval *FUNC5(zend_object *obj, zend_string *var_name, zval *value, void **cache_slot) /* {{{ */
{
	zend_ffi        *ffi = (zend_ffi*)obj;
	zend_ffi_symbol *sym = NULL;

	if (ffi->symbols) {
		sym = FUNC3(ffi->symbols, var_name);
		if (sym && sym->kind != ZEND_FFI_SYM_VAR) {
			sym = NULL;
		}
	}
	if (!sym) {
		FUNC4(zend_ffi_exception_ce, "Attempt to assign undefined C variable '%s'", FUNC1(var_name));
		return value;
	}

	if (sym->is_const) {
		FUNC4(zend_ffi_exception_ce, "Attempt to assign read-only C variable '%s'", FUNC1(var_name));
		return value;
	}

	FUNC2(sym->addr, FUNC0(sym->type), value);
	return value;
}