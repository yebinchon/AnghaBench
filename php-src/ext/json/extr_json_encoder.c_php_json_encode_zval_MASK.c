#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  zval ;
typedef  int /*<<< orphan*/  smart_str ;
struct TYPE_6__ {int /*<<< orphan*/  error_code; } ;
typedef  TYPE_1__ php_json_encoder ;

/* Variables and functions */
 int FAILURE ; 
#define  IS_ARRAY 136 
#define  IS_DOUBLE 135 
#define  IS_FALSE 134 
#define  IS_LONG 133 
#define  IS_NULL 132 
#define  IS_OBJECT 131 
#define  IS_REFERENCE 130 
#define  IS_STRING 129 
#define  IS_TRUE 128 
 int /*<<< orphan*/  PHP_JSON_ERROR_INF_OR_NAN ; 
 int /*<<< orphan*/  PHP_JSON_ERROR_UNSUPPORTED_TYPE ; 
 int PHP_JSON_PARTIAL_OUTPUT_ON_ERROR ; 
 int SUCCESS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int,TYPE_1__*) ; 
 int FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  php_json_serializable_ce ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *) ; 

int FUNC18(smart_str *buf, zval *val, int options, php_json_encoder *encoder) /* {{{ */
{
again:
	switch (FUNC7(val))
	{
		case IS_NULL:
			FUNC16(buf, "null", 4);
			break;

		case IS_TRUE:
			FUNC16(buf, "true", 4);
			break;
		case IS_FALSE:
			FUNC16(buf, "false", 5);
			break;

		case IS_LONG:
			FUNC14(buf, FUNC2(val));
			break;

		case IS_DOUBLE:
			if (FUNC13(FUNC1(val))) {
				FUNC10(buf, FUNC1(val), options);
			} else {
				encoder->error_code = PHP_JSON_ERROR_INF_OR_NAN;
				FUNC15(buf, '0');
			}
			break;

		case IS_STRING:
			return FUNC12(buf, FUNC6(val), FUNC5(val), options, encoder);

		case IS_OBJECT:
			if (FUNC8(FUNC3(val), php_json_serializable_ce)) {
				return FUNC11(buf, val, options, encoder);
			}
			/* fallthrough -- Non-serializable object */
		case IS_ARRAY: {
			/* Avoid modifications (and potential freeing) of the array through a reference when a
			 * jsonSerialize() method is invoked. */
			zval zv;
			int res;
			FUNC0(&zv, val);
			res = FUNC9(buf, &zv, options, encoder);
			FUNC17(&zv);
			return res;
		}

		case IS_REFERENCE:
			val = FUNC4(val);
			goto again;

		default:
			encoder->error_code = PHP_JSON_ERROR_UNSUPPORTED_TYPE;
			if (options & PHP_JSON_PARTIAL_OUTPUT_ON_ERROR) {
				FUNC16(buf, "null", 4);
			}
			return FAILURE;
	}

	return SUCCESS;
}