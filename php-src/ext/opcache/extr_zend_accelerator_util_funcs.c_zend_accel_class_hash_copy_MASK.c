#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_20__   TYPE_5__ ;
typedef  struct TYPE_19__   TYPE_4__ ;
typedef  struct TYPE_18__   TYPE_3__ ;
typedef  struct TYPE_17__   TYPE_2__ ;
typedef  struct TYPE_16__   TYPE_1__ ;
typedef  struct TYPE_15__   TYPE_14__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  zval ;
struct TYPE_16__ {int line_start; int /*<<< orphan*/  filename; } ;
struct TYPE_17__ {TYPE_1__ user; } ;
struct TYPE_18__ {int ce_flags; int /*<<< orphan*/  name; TYPE_2__ info; } ;
typedef  TYPE_3__ zend_class_entry ;
struct TYPE_20__ {int /*<<< orphan*/  val; int /*<<< orphan*/  key; } ;
struct TYPE_19__ {int nNumUsed; scalar_t__ nInternalPointer; TYPE_5__* arData; } ;
struct TYPE_15__ {int /*<<< orphan*/  ignore_dups; } ;
typedef  TYPE_4__ HashTable ;
typedef  int CG ;
typedef  TYPE_5__ Bucket ;

/* Variables and functions */
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  E_ERROR ; 
 scalar_t__ IS_UNDEF ; 
 scalar_t__ FUNC1 (int) ; 
 TYPE_14__ FUNC2 (int /*<<< orphan*/ ) ; 
 int ZEND_ACC_ANON_CLASS ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__* FUNC5 (int /*<<< orphan*/ ) ; 
 TYPE_3__* FUNC6 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC8 (TYPE_4__*,int /*<<< orphan*/ ,TYPE_3__*) ; 
 int /*<<< orphan*/  accel_directives ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_4__*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC12 (TYPE_4__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC14(HashTable *target, HashTable *source)
{
	Bucket *p, *end;
	zval *t;

	FUNC11(target, target->nNumUsed + source->nNumUsed, 0);
	p = source->arData;
	end = p + source->nNumUsed;
	for (; p != end; p++) {
		if (FUNC1(FUNC7(p->val) == IS_UNDEF)) continue;
		FUNC3(p->key);
		t = FUNC12(target, p->key, 1);
		if (FUNC1(t != NULL)) {
			if (FUNC0(FUNC4(p->key) > 0) && FUNC0(FUNC5(p->key)[0] == 0)) {
				/* Mangled key - ignore and wait for runtime */
				continue;
			} else if (FUNC1(!FUNC2(accel_directives).ignore_dups)) {
				zend_class_entry *ce1 = FUNC6(p->val);
				if (!(ce1->ce_flags & ZEND_ACC_ANON_CLASS)) {
					CG(in_compilation) = 1;
					FUNC13(ce1->info.user.filename);
					CG(zend_lineno) = ce1->info.user.line_start;
					FUNC9(E_ERROR,
							"Cannot declare %s %s, because the name is already in use",
							FUNC10(ce1), FUNC5(ce1->name));
					return;
				}
				continue;
			}
		} else {
			t = FUNC8(target, p->key, FUNC6(p->val));
		}
	}
	target->nInternalPointer = 0;
	return;
}