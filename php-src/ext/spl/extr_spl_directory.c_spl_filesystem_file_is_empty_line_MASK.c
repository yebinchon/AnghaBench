#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_5__ ;
typedef  struct TYPE_11__   TYPE_4__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  zval ;
typedef  size_t uint32_t ;
struct TYPE_9__ {scalar_t__ current_line_len; int /*<<< orphan*/  current_zval; scalar_t__ current_line; } ;
struct TYPE_10__ {TYPE_2__ file; } ;
struct TYPE_11__ {TYPE_3__ u; int /*<<< orphan*/  flags; } ;
typedef  TYPE_4__ spl_filesystem_object ;
struct TYPE_12__ {TYPE_1__* arData; } ;
struct TYPE_8__ {int /*<<< orphan*/  val; } ;

/* Variables and functions */
#define  IS_ARRAY 130 
#define  IS_NULL 129 
#define  IS_STRING 128 
 int /*<<< orphan*/  SPL_FILE_OBJECT_READ_CSV ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_5__* FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 
 int const FUNC6 (int /*<<< orphan*/ *) ; 
 int FUNC7 (TYPE_5__*) ; 

__attribute__((used)) static int FUNC8(spl_filesystem_object *intern) /* {{{ */
{
	if (intern->u.file.current_line) {
		return intern->u.file.current_line_len == 0;
	} else if (!FUNC2(intern->u.file.current_zval)) {
		switch(FUNC5(intern->u.file.current_zval)) {
			case IS_STRING:
				return FUNC3(intern->u.file.current_zval) == 0;
			case IS_ARRAY:
				if (FUNC0(intern->flags, SPL_FILE_OBJECT_READ_CSV)
						&& FUNC7(FUNC1(intern->u.file.current_zval)) == 1) {
					uint32_t idx = 0;
					zval *first;

					while (FUNC2(FUNC1(intern->u.file.current_zval)->arData[idx].val)) {
						idx++;
					}
					first = &FUNC1(intern->u.file.current_zval)->arData[idx].val;
					return FUNC6(first) == IS_STRING && FUNC4(first) == 0;
				}
				return FUNC7(FUNC1(intern->u.file.current_zval)) == 0;
			case IS_NULL:
				return 1;
			default:
				return 0;
		}
	} else {
		return 1;
	}
}