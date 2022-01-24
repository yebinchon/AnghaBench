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
struct TYPE_4__ {scalar_t__ kind; scalar_t__ is_const; scalar_t__ value; int /*<<< orphan*/  type; } ;
typedef  TYPE_1__ zend_ffi_symbol ;

/* Variables and functions */
 scalar_t__ ZEND_FFI_SYM_CONST ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC2(zend_ffi_symbol *old, zend_ffi_symbol *sym) /* {{{ */
{
	if (old->kind != sym->kind || old->is_const != sym->is_const) {
		return 0;
	}

	if (old->kind == ZEND_FFI_SYM_CONST) {
		if (old->value != sym->value) {
			return 0;
		}
	}

	return FUNC1(FUNC0(old->type), FUNC0(sym->type));
}