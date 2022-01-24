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
struct TYPE_3__ {int /*<<< orphan*/  data; } ;
typedef  TYPE_1__ zend_object_iterator ;
struct php_com_iterator {int /*<<< orphan*/  zdata; } ;

/* Variables and functions */
 int FAILURE ; 
 scalar_t__ IS_UNDEF ; 
 int SUCCESS ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC2(zend_object_iterator *iter)
{
	struct php_com_iterator *I = (struct php_com_iterator*)FUNC0(iter->data);

	if (FUNC1(I->zdata) != IS_UNDEF) {
		return SUCCESS;
	}

	return FAILURE;
}