#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_7__ ;
typedef  struct TYPE_12__   TYPE_5__ ;
typedef  struct TYPE_11__   TYPE_4__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  zval ;
struct TYPE_11__ {TYPE_3__* ce; } ;
struct TYPE_8__ {char* open_mode; int open_mode_len; char delimiter; char enclosure; unsigned char escape; int /*<<< orphan*/  func_getCurr; TYPE_7__* stream; int /*<<< orphan*/  zresource; int /*<<< orphan*/  context; int /*<<< orphan*/  zcontext; } ;
struct TYPE_9__ {TYPE_1__ file; } ;
struct TYPE_12__ {char* file_name; int file_name_len; TYPE_4__ std; TYPE_2__ u; void* orig_path; int /*<<< orphan*/  type; } ;
typedef  TYPE_5__ spl_filesystem_object ;
struct TYPE_13__ {char* orig_path; int /*<<< orphan*/  res; } ;
struct TYPE_10__ {int /*<<< orphan*/  function_table; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FAILURE ; 
 int /*<<< orphan*/  FS_IS_DIR ; 
 scalar_t__ FUNC1 (char*,int) ; 
 scalar_t__ IS_TRUE ; 
 int REPORT_ERRORS ; 
 int /*<<< orphan*/  SPL_FS_FILE ; 
 int SUCCESS ; 
 int USE_PATH ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 void* FUNC4 (char*,int) ; 
 int /*<<< orphan*/  exception ; 
 int /*<<< orphan*/  FUNC5 (char*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_7__* FUNC7 (char*,char*,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  spl_ce_LogicException ; 
 int /*<<< orphan*/  spl_ce_RuntimeException ; 
 int FUNC8 (char*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,...) ; 

__attribute__((used)) static int FUNC11(spl_filesystem_object *intern, int use_include_path, int silent) /* {{{ */
{
	zval tmp;

	intern->type = SPL_FS_FILE;

	FUNC5(intern->file_name, intern->file_name_len, FS_IS_DIR, &tmp);
	if (FUNC3(tmp) == IS_TRUE) {
		intern->u.file.open_mode = NULL;
		intern->file_name = NULL;
		FUNC10(spl_ce_LogicException, 0, "Cannot use SplFileObject with directories");
		return FAILURE;
	}

	intern->u.file.context = FUNC6(intern->u.file.zcontext, 0);
	intern->u.file.stream = FUNC7(intern->file_name, intern->u.file.open_mode, (use_include_path ? USE_PATH : 0) | REPORT_ERRORS, NULL, intern->u.file.context);

	if (!intern->file_name_len || !intern->u.file.stream) {
		if (!FUNC0(exception)) {
			FUNC10(spl_ce_RuntimeException, 0, "Cannot open file '%s'", intern->file_name_len ? intern->file_name : "");
		}
		intern->file_name = NULL; /* until here it is not a copy */
		intern->u.file.open_mode = NULL;
		return FAILURE;
	}

	/*
	if (intern->u.file.zcontext) {
		//zend_list_addref(Z_RES_VAL(intern->u.file.zcontext));
		Z_ADDREF_P(intern->u.file.zcontext);
	}
	*/

	if (intern->file_name_len > 1 && FUNC1(intern->file_name, intern->file_name_len-1)) {
		intern->file_name_len--;
	}

	intern->orig_path = FUNC4(intern->u.file.stream->orig_path, FUNC8(intern->u.file.stream->orig_path));

	intern->file_name = FUNC4(intern->file_name, intern->file_name_len);
	intern->u.file.open_mode = FUNC4(intern->u.file.open_mode, intern->u.file.open_mode_len);

	/* avoid reference counting in debug mode, thus do it manually */
	FUNC2(&intern->u.file.zresource, intern->u.file.stream->res);
	/*!!! TODO: maybe bug?
	Z_SET_REFCOUNT(intern->u.file.zresource, 1);
	*/

	intern->u.file.delimiter = ',';
	intern->u.file.enclosure = '"';
	intern->u.file.escape = (unsigned char) '\\';

	intern->u.file.func_getCurr = FUNC9(&intern->std.ce->function_table, "getcurrentline", sizeof("getcurrentline") - 1);

	return SUCCESS;
}