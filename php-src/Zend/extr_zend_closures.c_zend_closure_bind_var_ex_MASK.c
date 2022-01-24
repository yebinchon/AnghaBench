#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  zval ;
struct TYPE_6__ {int /*<<< orphan*/  static_variables_ptr; } ;
struct TYPE_7__ {TYPE_1__ op_array; } ;
struct TYPE_8__ {TYPE_2__ func; } ;
typedef  TYPE_3__ zend_closure ;
typedef  int uint32_t ;
struct TYPE_9__ {scalar_t__ arData; } ;
typedef  TYPE_4__ HashTable ;

/* Variables and functions */
 TYPE_4__* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

void FUNC4(zval *closure_zv, uint32_t offset, zval *val) /* {{{ */
{
	zend_closure *closure = (zend_closure *) FUNC2(closure_zv);
	HashTable *static_variables = FUNC0(closure->func.op_array.static_variables_ptr);
	zval *var = (zval*)((char*)static_variables->arData + offset);
	FUNC3(var);
	FUNC1(var, val);
}