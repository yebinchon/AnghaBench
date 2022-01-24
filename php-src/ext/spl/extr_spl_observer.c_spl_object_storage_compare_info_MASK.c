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
struct TYPE_2__ {int /*<<< orphan*/  inf; } ;
typedef  TYPE_1__ spl_SplObjectStorageElement ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC2(zval *e1, zval *e2) /* {{{ */
{
	spl_SplObjectStorageElement *s1 = (spl_SplObjectStorageElement*)FUNC0(e1);
	spl_SplObjectStorageElement *s2 = (spl_SplObjectStorageElement*)FUNC0(e2);

	return FUNC1(&s1->inf, &s2->inf);
}