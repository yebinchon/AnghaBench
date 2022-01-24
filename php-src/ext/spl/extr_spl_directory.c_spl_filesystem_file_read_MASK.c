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
typedef  int zend_long ;
struct TYPE_6__ {char* current_line; scalar_t__ max_line_len; size_t current_line_len; int /*<<< orphan*/  current_line_num; int /*<<< orphan*/  stream; int /*<<< orphan*/  current_zval; } ;
struct TYPE_7__ {TYPE_1__ file; } ;
struct TYPE_8__ {TYPE_2__ u; int /*<<< orphan*/  flags; int /*<<< orphan*/  file_name; } ;
typedef  TYPE_3__ spl_filesystem_object ;

/* Variables and functions */
 int FAILURE ; 
 int /*<<< orphan*/  SPL_FILE_OBJECT_DROP_NEW_LINE ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int SUCCESS ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 char* FUNC3 (char*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 char* FUNC5 (int /*<<< orphan*/ ,char*,scalar_t__,size_t*) ; 
 char* FUNC6 (scalar_t__,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  spl_ce_RuntimeException ; 
 int /*<<< orphan*/  FUNC7 (TYPE_3__*) ; 
 size_t FUNC8 (char*,char*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC10(spl_filesystem_object *intern, int silent) /* {{{ */
{
	char *buf;
	size_t line_len = 0;
	zend_long line_add = (intern->u.file.current_line || !FUNC1(intern->u.file.current_zval)) ? 1 : 0;

	FUNC7(intern);

	if (FUNC4(intern->u.file.stream)) {
		if (!silent) {
			FUNC9(spl_ce_RuntimeException, 0, "Cannot read from file %s", intern->file_name);
		}
		return FAILURE;
	}

	if (intern->u.file.max_line_len > 0) {
		buf = FUNC6((intern->u.file.max_line_len + 1), sizeof(char), 0);
		if (FUNC5(intern->u.file.stream, buf, intern->u.file.max_line_len + 1, &line_len) == NULL) {
			FUNC2(buf);
			buf = NULL;
		} else {
			buf[line_len] = '\0';
		}
	} else {
		buf = FUNC5(intern->u.file.stream, NULL, 0, &line_len);
	}

	if (!buf) {
		intern->u.file.current_line = FUNC3("");
		intern->u.file.current_line_len = 0;
	} else {
		if (FUNC0(intern->flags, SPL_FILE_OBJECT_DROP_NEW_LINE)) {
			line_len = FUNC8(buf, "\r\n");
			buf[line_len] = '\0';
		}

		intern->u.file.current_line = buf;
		intern->u.file.current_line_len = line_len;
	}
	intern->u.file.current_line_num += line_add;

	return SUCCESS;
}