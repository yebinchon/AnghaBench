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
typedef  int /*<<< orphan*/  zend_object_iterator ;
struct TYPE_2__ {int /*<<< orphan*/  data; } ;
struct php_pdo_iterator {int /*<<< orphan*/  fetch_ahead; TYPE_1__ iter; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC2(zend_object_iterator *iter)
{
	struct php_pdo_iterator *I = (struct php_pdo_iterator*)iter;

	FUNC1(&I->iter.data);

	if (!FUNC0(I->fetch_ahead)) {
		FUNC1(&I->fetch_ahead);
	}
}