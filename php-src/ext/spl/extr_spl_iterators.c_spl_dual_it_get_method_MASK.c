#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_18__   TYPE_5__ ;
typedef  struct TYPE_17__   TYPE_4__ ;
typedef  struct TYPE_16__   TYPE_3__ ;
typedef  struct TYPE_15__   TYPE_2__ ;
typedef  struct TYPE_14__   TYPE_1__ ;
typedef  struct TYPE_13__   TYPE_11__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  zval ;
typedef  int /*<<< orphan*/  zend_string ;
struct TYPE_17__ {TYPE_2__* handlers; } ;
typedef  TYPE_4__ zend_object ;
typedef  int /*<<< orphan*/  zend_function ;
struct TYPE_16__ {int /*<<< orphan*/  zobject; TYPE_1__* ce; } ;
struct TYPE_18__ {TYPE_3__ inner; } ;
typedef  TYPE_5__ spl_dual_it_object ;
struct TYPE_15__ {int /*<<< orphan*/ * (* get_method ) (TYPE_4__**,int /*<<< orphan*/ *,int /*<<< orphan*/  const*) ;} ;
struct TYPE_14__ {int /*<<< orphan*/  function_table; } ;
struct TYPE_13__ {scalar_t__ get_method; } ;

/* Variables and functions */
 TYPE_4__* FUNC0 (int /*<<< orphan*/ ) ; 
 TYPE_11__* FUNC1 (int /*<<< orphan*/ ) ; 
 TYPE_5__* FUNC2 (TYPE_4__*) ; 
 int /*<<< orphan*/ * FUNC3 (TYPE_4__**,int /*<<< orphan*/ *,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC5 (TYPE_4__**,int /*<<< orphan*/ *,int /*<<< orphan*/  const*) ; 

__attribute__((used)) static zend_function *FUNC6(zend_object **object, zend_string *method, const zval *key)
{
	zend_function        *function_handler;
	spl_dual_it_object   *intern;

	intern = FUNC2(*object);

	function_handler = FUNC5(object, method, key);
	if (!function_handler && intern->inner.ce) {
		if ((function_handler = FUNC4(&intern->inner.ce->function_table, method)) == NULL) {
			if (FUNC1(intern->inner.zobject)->get_method) {
				*object = FUNC0(intern->inner.zobject);
				function_handler = (*object)->handlers->get_method(object, method, key);
			}
		} else {
			*object = FUNC0(intern->inner.zobject);
		}
	}
	return function_handler;
}