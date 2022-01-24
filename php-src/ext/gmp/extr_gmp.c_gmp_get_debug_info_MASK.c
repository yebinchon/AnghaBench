#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  zval ;
typedef  int /*<<< orphan*/  zend_object ;
typedef  int /*<<< orphan*/  mpz_ptr ;
struct TYPE_2__ {int /*<<< orphan*/  num; } ;
typedef  int /*<<< orphan*/  HashTable ;

/* Variables and functions */
 TYPE_1__* FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static HashTable *FUNC5(zend_object *obj, int *is_temp) /* {{{ */
{
	HashTable *ht, *props = FUNC4(obj);
	mpz_ptr gmpnum = FUNC0(obj)->num;
	zval zv;

	*is_temp = 1;
	ht = FUNC2(props);

	FUNC1(&zv, gmpnum, 10);
	FUNC3(ht, "num", sizeof("num")-1, &zv);

	return ht;
}