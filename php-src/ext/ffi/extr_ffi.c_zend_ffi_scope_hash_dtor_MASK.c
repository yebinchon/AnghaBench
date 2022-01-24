#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  zval ;
struct TYPE_5__ {struct TYPE_5__* tags; struct TYPE_5__* symbols; } ;
typedef  TYPE_1__ zend_ffi_scope ;

/* Variables and functions */
 TYPE_1__* FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 

__attribute__((used)) static void FUNC3(zval *zv) /* {{{ */
{
	zend_ffi_scope *scope = FUNC0(zv);
	if (scope->symbols) {
		FUNC2(scope->symbols);
		FUNC1(scope->symbols);
	}
	if (scope->tags) {
		FUNC2(scope->tags);
		FUNC1(scope->tags);
	}
	FUNC1(scope);
}