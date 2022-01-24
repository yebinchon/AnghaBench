#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_4__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  zval ;
struct TYPE_10__ {int level; TYPE_2__* prefix; TYPE_1__* iterators; } ;
typedef  TYPE_3__ spl_recursive_it_object ;
struct TYPE_11__ {int /*<<< orphan*/  s; int /*<<< orphan*/  member_0; } ;
typedef  TYPE_4__ smart_str ;
struct TYPE_9__ {int /*<<< orphan*/  s; } ;
struct TYPE_8__ {int /*<<< orphan*/  ce; int /*<<< orphan*/  zobject; } ;

/* Variables and functions */
 scalar_t__ IS_TRUE ; 
 scalar_t__ IS_UNDEF ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_4__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC9(spl_recursive_it_object *object, zval *return_value)
{
	smart_str  str = {0};
	zval       has_next;
	int        level;

	FUNC6(&str, FUNC2(object->prefix[0].s), FUNC1(object->prefix[0].s));

	for (level = 0; level < object->level; ++level) {
		FUNC7(FUNC3(object->iterators[level].zobject), object->iterators[level].ce, NULL, "hasnext", &has_next);
		if (FUNC4(has_next) != IS_UNDEF) {
			if (FUNC4(has_next) == IS_TRUE) {
				FUNC6(&str, FUNC2(object->prefix[1].s), FUNC1(object->prefix[1].s));
			} else {
				FUNC6(&str, FUNC2(object->prefix[2].s), FUNC1(object->prefix[2].s));
			}
			FUNC8(&has_next);
		}
	}
	FUNC7(FUNC3(object->iterators[level].zobject), object->iterators[level].ce, NULL, "hasnext", &has_next);
	if (FUNC4(has_next) != IS_UNDEF) {
		if (FUNC4(has_next) == IS_TRUE) {
			FUNC6(&str, FUNC2(object->prefix[3].s), FUNC1(object->prefix[3].s));
		} else {
			FUNC6(&str, FUNC2(object->prefix[4].s), FUNC1(object->prefix[4].s));
		}
		FUNC8(&has_next);
	}

	FUNC6(&str, FUNC2(object->prefix[5].s), FUNC1(object->prefix[5].s));
	FUNC5(&str);

	FUNC0(str.s);
}