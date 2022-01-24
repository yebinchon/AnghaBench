#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_22__   TYPE_6__ ;
typedef  struct TYPE_21__   TYPE_5__ ;
typedef  struct TYPE_20__   TYPE_4__ ;
typedef  struct TYPE_19__   TYPE_3__ ;
typedef  struct TYPE_18__   TYPE_2__ ;
typedef  struct TYPE_17__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  zval ;
struct TYPE_19__ {int function_name; } ;
struct TYPE_18__ {int filename; scalar_t__ last; TYPE_1__* opcodes; } ;
struct TYPE_20__ {scalar_t__ type; TYPE_3__ common; TYPE_2__ op_array; } ;
typedef  TYPE_4__ zend_function ;
struct TYPE_22__ {int key; int /*<<< orphan*/  val; } ;
struct TYPE_21__ {int nNumUsed; scalar_t__ nInternalPointer; TYPE_6__* arData; } ;
struct TYPE_17__ {int lineno; } ;
typedef  TYPE_5__ HashTable ;
typedef  int CG ;
typedef  TYPE_6__ Bucket ;

/* Variables and functions */
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  E_ERROR ; 
 scalar_t__ IS_UNDEF ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 scalar_t__ ZEND_USER_FUNCTION ; 
 scalar_t__ FUNC3 (int) ; 
 scalar_t__* FUNC4 (int) ; 
 TYPE_4__* FUNC5 (int /*<<< orphan*/ ) ; 
 TYPE_4__* FUNC6 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_5__*,int,TYPE_4__*,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,char*,scalar_t__*,...) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_5__*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC11 (TYPE_5__*,int,int) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_5__*,int,TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC13 (int) ; 

__attribute__((used)) static void FUNC14(HashTable *target, HashTable *source)
{
	zend_function *function1, *function2;
	Bucket *p, *end;
	zval *t;

	FUNC10(target, target->nNumUsed + source->nNumUsed, 0);
	p = source->arData;
	end = p + source->nNumUsed;
	for (; p != end; p++) {
		FUNC2(FUNC7(p->val) != IS_UNDEF);
		FUNC2(p->key);
		t = FUNC11(target, p->key, 1);
		if (FUNC1(t != NULL)) {
			if (FUNC0(FUNC3(p->key) > 0) && FUNC0(FUNC4(p->key)[0] == 0)) {
				/* Mangled key */
				FUNC12(target, p->key, FUNC5(p->val));
			} else {
				goto failure;
			}
		} else {
			FUNC8(target, p->key, FUNC5(p->val), 1);
		}
	}
	target->nInternalPointer = 0;
	return;

failure:
	function1 = FUNC5(p->val);
	function2 = FUNC6(t);
	CG(in_compilation) = 1;
	FUNC13(function1->op_array.filename);
	CG(zend_lineno) = function1->op_array.opcodes[0].lineno;
	if (function2->type == ZEND_USER_FUNCTION
		&& function2->op_array.last > 0) {
		FUNC9(E_ERROR, "Cannot redeclare %s() (previously declared in %s:%d)",
				   FUNC4(function1->common.function_name),
				   FUNC4(function2->op_array.filename),
				   (int)function2->op_array.opcodes[0].lineno);
	} else {
		FUNC9(E_ERROR, "Cannot redeclare %s()", FUNC4(function1->common.function_name));
	}
}