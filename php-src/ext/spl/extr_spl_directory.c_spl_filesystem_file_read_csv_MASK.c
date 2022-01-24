#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  zval ;
struct TYPE_6__ {size_t current_line_len; int /*<<< orphan*/  current_zval; int /*<<< orphan*/  stream; int /*<<< orphan*/  current_line; } ;
struct TYPE_7__ {TYPE_1__ file; } ;
struct TYPE_8__ {TYPE_2__ u; int /*<<< orphan*/  flags; } ;
typedef  TYPE_3__ spl_filesystem_object ;

/* Variables and functions */
 int /*<<< orphan*/  SPL_FILE_OBJECT_SKIP_EMPTY ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int SUCCESS ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 char* FUNC4 (int /*<<< orphan*/ ,size_t) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char,char,int,size_t,char*,int /*<<< orphan*/ *) ; 
 int FUNC6 (TYPE_3__*,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC8(spl_filesystem_object *intern, char delimiter, char enclosure, int escape, zval *return_value) /* {{{ */
{
	int ret = SUCCESS;
	zval *value;

	do {
		ret = FUNC6(intern, 1);
	} while (ret == SUCCESS && !intern->u.file.current_line_len && FUNC0(intern->flags, SPL_FILE_OBJECT_SKIP_EMPTY));

	if (ret == SUCCESS) {
		size_t buf_len = intern->u.file.current_line_len;
		char *buf = FUNC4(intern->u.file.current_line, buf_len);

		if (!FUNC3(intern->u.file.current_zval)) {
			FUNC7(&intern->u.file.current_zval);
			FUNC2(&intern->u.file.current_zval);
		}

		FUNC5(intern->u.file.stream, delimiter, enclosure, escape, buf_len, buf, &intern->u.file.current_zval);
		if (return_value) {
			value = &intern->u.file.current_zval;
			FUNC1(return_value, value);
		}
	}
	return ret;
}