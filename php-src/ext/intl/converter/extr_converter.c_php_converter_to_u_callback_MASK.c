#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  zval ;
struct TYPE_10__ {int param_count; scalar_t__ no_separation; int /*<<< orphan*/ * retval; int /*<<< orphan*/ * params; } ;
struct TYPE_8__ {int /*<<< orphan*/  to_cache; TYPE_3__ to_cb; } ;
typedef  TYPE_1__ php_converter_object ;
typedef  char const* int32_t ;
typedef  int /*<<< orphan*/  UErrorCode ;
struct TYPE_9__ {char const* source; char const* sourceLimit; } ;
typedef  TYPE_2__ UConverterToUnicodeArgs ;
typedef  int /*<<< orphan*/  UConverterCallbackReason ;

/* Variables and functions */
 scalar_t__ FAILURE ; 
 scalar_t__ IS_LONG ; 
 int /*<<< orphan*/  U_INTERNAL_PROGRAM_ERROR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char const*,char const*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,TYPE_2__*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_1__*,int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC12 (TYPE_3__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC14(const void *context,
                                        UConverterToUnicodeArgs *args,
                                        const char *codeUnits, int32_t length,
                                        UConverterCallbackReason reason,
                                        UErrorCode *pErrorCode) {
	php_converter_object *objval = (php_converter_object*)context;
	zval retval;
	zval zargs[4];

	FUNC1(&zargs[0], reason);
	if (args->source) {
		FUNC2(&zargs[1], args->source, args->sourceLimit - args->source);
	} else {
		FUNC0(&zargs[1]);
	}
	if (codeUnits) {
		FUNC2(&zargs[2], codeUnits, length);
	} else {
		FUNC0(&zargs[2]);
	}
	FUNC1(&zargs[3], *pErrorCode);

	objval->to_cb.param_count    = 4;
	objval->to_cb.params = zargs;
	objval->to_cb.retval = &retval;
	objval->to_cb.no_separation  = 0;
	if (FUNC12(&(objval->to_cb), &(objval->to_cache)) == FAILURE) {
		/* Unlikely */
		FUNC11(objval, U_INTERNAL_PROGRAM_ERROR, "Unexpected failure calling toUCallback()");
	} else if (!FUNC4(retval)) {
		FUNC10(&retval, args, objval);
		FUNC13(&retval);
	}

	if (FUNC8(zargs[3]) == IS_LONG) {
		*pErrorCode = FUNC5(zargs[3]);
	} else if (FUNC3(zargs[3]) && FUNC9(FUNC7(zargs[3])) == IS_LONG) {
		*pErrorCode = FUNC6(FUNC7(zargs[3]));
	}

	FUNC13(&zargs[0]);
	FUNC13(&zargs[1]);
	FUNC13(&zargs[2]);
	FUNC13(&zargs[3]);
}