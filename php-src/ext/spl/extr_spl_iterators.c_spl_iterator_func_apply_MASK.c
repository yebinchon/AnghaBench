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
typedef  int /*<<< orphan*/  zend_object_iterator ;
struct TYPE_2__ {int /*<<< orphan*/  fcc; int /*<<< orphan*/  fci; int /*<<< orphan*/  count; } ;
typedef  TYPE_1__ spl_iterator_apply_info ;

/* Variables and functions */
 int ZEND_HASH_APPLY_KEEP ; 
 int ZEND_HASH_APPLY_STOP ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC3(zend_object_iterator *iter, void *puser) /* {{{ */
{
	zval retval;
	spl_iterator_apply_info  *apply_info = (spl_iterator_apply_info*)puser;
	int result;

	apply_info->count++;
	FUNC0(&apply_info->fci, &apply_info->fcc, &retval, NULL);
	result = FUNC1(&retval) ? ZEND_HASH_APPLY_KEEP : ZEND_HASH_APPLY_STOP;
	FUNC2(&retval);
	return result;
}