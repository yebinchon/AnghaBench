#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  zval ;
typedef  void* zend_ulong ;
struct TYPE_3__ {int /*<<< orphan*/  data; } ;
typedef  TYPE_1__ zend_object_iterator ;
struct php_com_iterator {scalar_t__ key; int /*<<< orphan*/  zdata; int /*<<< orphan*/  code_page; int /*<<< orphan*/  v; int /*<<< orphan*/  safe_array; scalar_t__ sa_max; scalar_t__ ev; } ;
typedef  scalar_t__ ULONG ;
typedef  int /*<<< orphan*/  LONG ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__,int,int /*<<< orphan*/ *,unsigned long*) ; 
 scalar_t__ IS_UNDEF ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC11(zend_object_iterator *iter)
{
	struct php_com_iterator *I = (struct php_com_iterator*)FUNC6(iter->data);
	unsigned long n_fetched;
	zval ptr;

	/* release current cached element */
	FUNC2(&I->v);

	if (FUNC7(I->zdata) != IS_UNDEF) {
		FUNC10(&I->zdata);
		FUNC5(&I->zdata);
	}

	if (I->ev) {
		/* Get the next element */
		if (FUNC1(FUNC0(I->ev, 1, &I->v, &n_fetched)) && n_fetched > 0) {
			I->key++;
		} else {
			/* indicate that there are no more items */
			I->key = (zend_ulong)-1;
			return;
		}
	} else {
		/* safe array */
		if (I->key >= (ULONG) I->sa_max) {
			I->key = (zend_ulong)-1;
			return;
		}
		I->key++;
		if (FUNC8(&I->safe_array, &I->v, (LONG)I->key) == 0) {
			I->key = (zend_ulong)-1;
			return;
		}
	}

	FUNC4(&ptr);
	FUNC9(&ptr, &I->v, I->code_page);
	/* php_com_wrap_variant(ptr, &I->v, I->code_page); */
	FUNC3(&I->zdata, &ptr);
}