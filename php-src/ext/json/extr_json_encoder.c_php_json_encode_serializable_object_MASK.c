#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  zval ;
struct TYPE_7__ {int /*<<< orphan*/  name; } ;
typedef  TYPE_1__ zend_class_entry ;
typedef  int /*<<< orphan*/  smart_str ;
struct TYPE_8__ {int /*<<< orphan*/  error_code; } ;
typedef  TYPE_2__ php_json_encoder ;
typedef  int /*<<< orphan*/  HashTable ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int FAILURE ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ IS_OBJECT ; 
 scalar_t__ IS_UNDEF ; 
 int /*<<< orphan*/  PHP_JSON_ERROR_RECURSION ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int PHP_JSON_PARTIAL_OUTPUT_ON_ERROR ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char*) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC8 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ ) ; 
 int FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  exception ; 
 int FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int,TYPE_2__*) ; 
 int FUNC13 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC17(smart_str *buf, zval *val, int options, php_json_encoder *encoder) /* {{{ */
{
	zend_class_entry *ce = FUNC7(val);
	HashTable* myht = FUNC8(val);
	zval retval, fname;
	int return_code;

	if (myht && FUNC1(myht)) {
		encoder->error_code = PHP_JSON_ERROR_RECURSION;
		if (options & PHP_JSON_PARTIAL_OUTPUT_ON_ERROR) {
			FUNC14(buf, "null", 4);
		}
		return FAILURE;
	}

	FUNC2(myht);

	FUNC5(&fname, "jsonSerialize");

	if (FAILURE == FUNC11(NULL, val, &fname, &retval, 0, NULL) || FUNC10(retval) == IS_UNDEF) {
		if (!FUNC0(exception)) {
			FUNC15(NULL, 0, "Failed calling %s::jsonSerialize()", FUNC4(ce->name));
		}
		FUNC16(&fname);

		if (options & PHP_JSON_PARTIAL_OUTPUT_ON_ERROR) {
			FUNC14(buf, "null", 4);
		}
		FUNC3(myht);
		return FAILURE;
	}

	if (FUNC0(exception)) {
		/* Error already raised */
		FUNC16(&retval);
		FUNC16(&fname);

		if (options & PHP_JSON_PARTIAL_OUTPUT_ON_ERROR) {
			FUNC14(buf, "null", 4);
		}
		FUNC3(myht);
		return FAILURE;
	}

	if ((FUNC10(retval) == IS_OBJECT) &&
		(FUNC6(retval) == FUNC9(val))) {
		/* Handle the case where jsonSerialize does: return $this; by going straight to encode array */
		FUNC3(myht);
		return_code = FUNC12(buf, &retval, options, encoder);
	} else {
		/* All other types, encode as normal */
		return_code = FUNC13(buf, &retval, options, encoder);
		FUNC3(myht);
	}

	FUNC16(&retval);
	FUNC16(&fname);

	return return_code;
}