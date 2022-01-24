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
typedef  int /*<<< orphan*/  TypeCacheEntry ;
struct TYPE_2__ {int /*<<< orphan*/  upper; } ;
typedef  TYPE_1__ NonEmptyRange ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC1(const void *a, const void *b, void *arg)
{
	NonEmptyRange *i1 = (NonEmptyRange *) a;
	NonEmptyRange *i2 = (NonEmptyRange *) b;
	TypeCacheEntry *typcache = (TypeCacheEntry *) arg;

	return FUNC0(typcache, &i1->upper, &i2->upper);
}