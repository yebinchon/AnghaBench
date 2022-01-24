#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_5__ ;
typedef  struct TYPE_12__   TYPE_4__ ;
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  zval ;
struct TYPE_10__ {TYPE_5__* iterator; } ;
struct TYPE_11__ {int /*<<< orphan*/  ce; } ;
struct TYPE_12__ {TYPE_2__ inner; TYPE_3__ std; } ;
typedef  TYPE_4__ spl_dual_it_object ;
struct TYPE_13__ {TYPE_1__* funcs; } ;
struct TYPE_9__ {int /*<<< orphan*/  (* move_forward ) (TYPE_5__*) ;} ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ IS_UNDEF ; 
 scalar_t__ SUCCESS ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  exception ; 
 scalar_t__ FUNC3 (TYPE_4__*,int) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static inline void FUNC9(zval *zthis, spl_dual_it_object *intern)
{
	zval retval;

	while (FUNC3(intern, 1) == SUCCESS) {
		FUNC6(FUNC1(zthis), intern->std.ce, NULL, "accept", &retval);
		if (FUNC2(retval) != IS_UNDEF) {
			if (FUNC7(&retval)) {
				FUNC8(&retval);
				return;
			}
			FUNC8(&retval);
		}
		if (FUNC0(exception)) {
			return;
		}
		intern->inner.iterator->funcs->move_forward(intern->inner.iterator);
	}
	FUNC4(intern);
}