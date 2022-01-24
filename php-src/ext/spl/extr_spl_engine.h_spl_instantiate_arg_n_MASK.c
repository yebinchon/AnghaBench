#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_5__ ;
typedef  struct TYPE_13__   TYPE_4__ ;
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  zval ;
struct TYPE_10__ {int /*<<< orphan*/  function_name; } ;
struct TYPE_11__ {TYPE_1__ common; } ;
typedef  TYPE_2__ zend_function ;
struct TYPE_12__ {void* object; TYPE_5__* called_scope; TYPE_2__* function_handler; } ;
typedef  TYPE_3__ zend_fcall_info_cache ;
struct TYPE_13__ {int size; int param_count; int no_separation; int /*<<< orphan*/ * params; int /*<<< orphan*/ * retval; void* object; int /*<<< orphan*/  function_name; } ;
typedef  TYPE_4__ zend_fcall_info ;
struct TYPE_14__ {TYPE_2__* constructor; } ;
typedef  TYPE_5__ zend_class_entry ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 void* FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_5__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_4__*,TYPE_3__*) ; 

__attribute__((used)) static inline void FUNC4(zend_class_entry *pce, zval *retval, int argc, zval *argv)
{
	zend_function *func = pce->constructor;
	zend_fcall_info fci;
	zend_fcall_info_cache fcc;
	zval dummy;

	FUNC2(pce, retval);

	fci.size = sizeof(zend_fcall_info);
	FUNC0(&fci.function_name, func->common.function_name);
	fci.object = FUNC1(retval);
	fci.retval = &dummy;
	fci.param_count = argc;
	fci.params = argv;
	fci.no_separation = 1;

	fcc.function_handler = func;
	fcc.called_scope = pce;
	fcc.object = FUNC1(retval);

	FUNC3(&fci, &fcc);
}