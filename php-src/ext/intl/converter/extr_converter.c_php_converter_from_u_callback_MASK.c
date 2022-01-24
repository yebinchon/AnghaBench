#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  zval ;
struct TYPE_6__ {int param_count; scalar_t__ no_separation; int /*<<< orphan*/ * retval; int /*<<< orphan*/ * params; } ;
struct TYPE_5__ {int /*<<< orphan*/  from_cache; TYPE_2__ from_cb; } ;
typedef  TYPE_1__ php_converter_object ;
typedef  int int32_t ;
typedef  int /*<<< orphan*/  UErrorCode ;
typedef  int /*<<< orphan*/  UConverterFromUnicodeArgs ;
typedef  int /*<<< orphan*/  UConverterCallbackReason ;
typedef  int /*<<< orphan*/  UChar32 ;
typedef  int /*<<< orphan*/  UChar ;

/* Variables and functions */
 scalar_t__ FAILURE ; 
 scalar_t__ IS_LONG ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/  const*,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  U_INTERNAL_PROGRAM_ERROR ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_1__*,int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC13 (TYPE_2__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC15(const void *context,
                                          UConverterFromUnicodeArgs *args,
                                          const UChar *codeUnits, int32_t length, UChar32 codePoint,
                                          UConverterCallbackReason reason,
                                          UErrorCode *pErrorCode) {
	php_converter_object *objval = (php_converter_object*)context;
	zval retval;
	zval zargs[4];
	int i;

	FUNC1(&zargs[0], reason);
	FUNC10(&zargs[1]);
	i = 0;
	while (i < length) {
		UChar32 c;
		FUNC0(codeUnits, i, length, c);
		FUNC9(&zargs[1], c);
	}
	FUNC1(&zargs[2], codePoint);
	FUNC1(&zargs[3], *pErrorCode);

	objval->from_cb.param_count = 4;
	objval->from_cb.params = zargs;
	objval->from_cb.retval = &retval;
	objval->from_cb.no_separation  = 0;
	if (FUNC13(&(objval->from_cb), &(objval->from_cache)) == FAILURE) {
		/* Unlikely */
		FUNC12(objval, U_INTERNAL_PROGRAM_ERROR, "Unexpected failure calling fromUCallback()");
	} else if (!FUNC3(retval)) {
		FUNC11(&retval, args, objval);
		FUNC14(&retval);
	}

	if (FUNC7(zargs[3]) == IS_LONG) {
		*pErrorCode = FUNC4(zargs[3]);
	} else if (FUNC2(zargs[3]) && FUNC8(FUNC6(zargs[3])) == IS_LONG) {
		*pErrorCode = FUNC5(FUNC6(zargs[3]));
	}

	FUNC14(&zargs[0]);
	FUNC14(&zargs[1]);
	FUNC14(&zargs[2]);
	FUNC14(&zargs[3]);
}