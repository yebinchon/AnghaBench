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
struct TYPE_12__ {int /*<<< orphan*/  pos; int /*<<< orphan*/  key; int /*<<< orphan*/  data; } ;
struct TYPE_11__ {TYPE_5__* iterator; } ;
struct TYPE_13__ {TYPE_3__ current; TYPE_2__ inner; } ;
typedef  TYPE_4__ spl_dual_it_object ;
struct TYPE_14__ {TYPE_1__* funcs; } ;
struct TYPE_10__ {int /*<<< orphan*/  (* get_current_key ) (TYPE_5__*,int /*<<< orphan*/ *) ;int /*<<< orphan*/ * (* get_current_data ) (TYPE_5__*) ;} ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int FAILURE ; 
 scalar_t__ SUCCESS ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  exception ; 
 int /*<<< orphan*/  FUNC4 (TYPE_4__*) ; 
 scalar_t__ FUNC5 (TYPE_4__*) ; 
 int /*<<< orphan*/ * FUNC6 (TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_5__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static inline int FUNC9(spl_dual_it_object *intern, int check_more)
{
	zval *data;

	FUNC4(intern);
	if (!check_more || FUNC5(intern) == SUCCESS) {
		data = intern->inner.iterator->funcs->get_current_data(intern->inner.iterator);
		if (data) {
			FUNC1(&intern->current.data, data);
		}

		if (intern->inner.iterator->funcs->get_current_key) {
			intern->inner.iterator->funcs->get_current_key(intern->inner.iterator, &intern->current.key);
			if (FUNC0(exception)) {
				FUNC8(&intern->current.key);
				FUNC3(&intern->current.key);
			}
		} else {
			FUNC2(&intern->current.key, intern->current.pos);
		}
		return FUNC0(exception) ? FAILURE : SUCCESS;
	}
	return FAILURE;
}