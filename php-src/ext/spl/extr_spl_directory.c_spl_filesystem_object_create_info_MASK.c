#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_16__   TYPE_6__ ;
typedef  struct TYPE_15__   TYPE_3__ ;
typedef  struct TYPE_14__   TYPE_2__ ;
typedef  struct TYPE_13__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  zval ;
typedef  int /*<<< orphan*/  zend_error_handling ;
struct TYPE_14__ {TYPE_6__* constructor; } ;
typedef  TYPE_2__ zend_class_entry ;
struct TYPE_15__ {int /*<<< orphan*/  std; TYPE_2__* info_class; } ;
typedef  TYPE_3__ spl_filesystem_object ;
struct TYPE_13__ {scalar_t__ scope; } ;
struct TYPE_16__ {TYPE_1__ common; } ;

/* Variables and functions */
 int /*<<< orphan*/  EH_THROW ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,size_t) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  spl_ce_RuntimeException ; 
 scalar_t__ spl_ce_SplFileInfo ; 
 TYPE_3__* FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_3__*,char*,size_t,int) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,TYPE_2__*,TYPE_6__**,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static spl_filesystem_object *FUNC13(spl_filesystem_object *source, char *file_path, size_t file_path_len, int use_copy, zend_class_entry *ce, zval *return_value) /* {{{ */
{
	spl_filesystem_object *intern;
	zval arg1;
	zend_error_handling error_handling;

	if (!file_path || !file_path_len) {
#if defined(PHP_WIN32)
		zend_throw_exception_ex(spl_ce_RuntimeException, 0, "Cannot create SplFileInfo for empty path");
		if (file_path && !use_copy) {
			efree(file_path);
		}
#else
		if (file_path && !use_copy) {
			FUNC3(file_path);
		}
		file_path_len = 1;
		file_path = "/";
#endif
		return NULL;
	}

	FUNC8(EH_THROW, spl_ce_RuntimeException, &error_handling);

	ce = ce ? ce : source->info_class;

	FUNC11(ce);

	intern = FUNC4(FUNC6(ce));
	FUNC0(return_value, &intern->std);

	if (ce->constructor->common.scope != spl_ce_SplFileInfo) {
		FUNC1(&arg1, file_path, file_path_len);
		FUNC7(FUNC2(return_value), ce, &ce->constructor, "__construct", NULL, &arg1);
		FUNC12(&arg1);
	} else {
		FUNC5(intern, file_path, file_path_len, use_copy);
	}

	FUNC9(&error_handling);
	return intern;
}