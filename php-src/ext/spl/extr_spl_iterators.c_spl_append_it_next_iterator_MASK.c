#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_19__   TYPE_7__ ;
typedef  struct TYPE_18__   TYPE_6__ ;
typedef  struct TYPE_17__   TYPE_5__ ;
typedef  struct TYPE_16__   TYPE_4__ ;
typedef  struct TYPE_15__   TYPE_3__ ;
typedef  struct TYPE_14__   TYPE_2__ ;
typedef  struct TYPE_13__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  zval ;
struct TYPE_16__ {TYPE_6__* ce; int /*<<< orphan*/ * iterator; int /*<<< orphan*/  zobject; } ;
struct TYPE_14__ {TYPE_7__* iterator; } ;
struct TYPE_15__ {TYPE_2__ append; } ;
struct TYPE_17__ {TYPE_4__ inner; TYPE_3__ u; } ;
typedef  TYPE_5__ spl_dual_it_object ;
struct TYPE_19__ {TYPE_1__* funcs; } ;
struct TYPE_18__ {int /*<<< orphan*/ * (* get_iterator ) (TYPE_6__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ;} ;
struct TYPE_13__ {scalar_t__ (* valid ) (TYPE_7__*) ;int /*<<< orphan*/ * (* get_current_data ) (TYPE_7__*) ;} ;

/* Variables and functions */
 int FAILURE ; 
 scalar_t__ SUCCESS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 TYPE_6__* FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_5__*) ; 
 scalar_t__ FUNC6 (TYPE_7__*) ; 
 int /*<<< orphan*/ * FUNC7 (TYPE_7__*) ; 
 int /*<<< orphan*/ * FUNC8 (TYPE_6__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 

int FUNC11(spl_dual_it_object *intern) /* {{{*/
{
	FUNC4(intern);

	if (!FUNC2(intern->inner.zobject)) {
		FUNC10(&intern->inner.zobject);
		FUNC1(&intern->inner.zobject);
		intern->inner.ce = NULL;
		if (intern->inner.iterator) {
			FUNC9(intern->inner.iterator);
			intern->inner.iterator = NULL;
		}
	}
	if (intern->u.append.iterator->funcs->valid(intern->u.append.iterator) == SUCCESS) {
		zval *it;

		it  = intern->u.append.iterator->funcs->get_current_data(intern->u.append.iterator);
		FUNC0(&intern->inner.zobject, it);
		intern->inner.ce = FUNC3(it);
		intern->inner.iterator = intern->inner.ce->get_iterator(intern->inner.ce, it, 0);
		FUNC5(intern);
		return SUCCESS;
	} else {
		return FAILURE;
	}
}