#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  zval ;
typedef  int /*<<< orphan*/  zend_string ;
struct TYPE_4__ {int size; int param_count; int /*<<< orphan*/ * params; int /*<<< orphan*/ * retval; int /*<<< orphan*/ * object; int /*<<< orphan*/  function_name; } ;
struct php_sqlite3_fci {int /*<<< orphan*/  fcc; TYPE_2__ fci; } ;
typedef  int /*<<< orphan*/  sqlite3_value ;
typedef  int /*<<< orphan*/  sqlite3_context ;
struct TYPE_3__ {int /*<<< orphan*/  zval_context; int /*<<< orphan*/  row_count; } ;
typedef  TYPE_1__ php_sqlite3_agg_context ;

/* Variables and functions */
 int /*<<< orphan*/  E_WARNING ; 
 int FAILURE ; 
#define  IS_DOUBLE 135 
#define  IS_LONG 134 
#define  IS_NULL 133 
#define  SQLITE3_TEXT 132 
#define  SQLITE_BLOB 131 
#define  SQLITE_FLOAT 130 
#define  SQLITE_INTEGER 129 
#define  SQLITE_NULL 128 
 int /*<<< orphan*/  SQLITE_TRANSIENT ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 
 int FUNC13 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC16 (int,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC17 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC22 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC23 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC24 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC25 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC26 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC27 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC28 (int /*<<< orphan*/ *) ; 
 int FUNC29 (int /*<<< orphan*/ *) ; 
 int FUNC30 (TYPE_2__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC31 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC32 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC33 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC34(struct php_sqlite3_fci *fc, zval *cb, int argc, sqlite3_value **argv, sqlite3_context *context, int is_agg) /* {{{ */
{
	zval *zargs = NULL;
	zval retval;
	int i;
	int ret;
	int fake_argc;
	php_sqlite3_agg_context *agg_context = NULL;

	if (is_agg) {
		is_agg = 2;
	}

	fake_argc = argc + is_agg;

	fc->fci.size = sizeof(fc->fci);
	FUNC4(&fc->fci.function_name, cb);
	fc->fci.object = NULL;
	fc->fci.retval = &retval;
	fc->fci.param_count = fake_argc;

	/* build up the params */

	if (fake_argc) {
		zargs = (zval *)FUNC16(fake_argc, sizeof(zval), 0);
	}

	if (is_agg) {
		/* summon the aggregation context */
		agg_context = (php_sqlite3_agg_context *)FUNC17(context, sizeof(php_sqlite3_agg_context));

		if (FUNC11(agg_context->zval_context)) {
			FUNC7(&agg_context->zval_context);
		}
		FUNC3(&zargs[0], &agg_context->zval_context);
		FUNC6(&zargs[1], agg_context->row_count);
	}

	for (i = 0; i < argc; i++) {
		switch (FUNC29(argv[i])) {
			case SQLITE_INTEGER:
#if ZEND_LONG_MAX > 2147483647
				ZVAL_LONG(&zargs[i + is_agg], sqlite3_value_int64(argv[i]));
#else
				FUNC6(&zargs[i + is_agg], FUNC26(argv[i]));
#endif
				break;

			case SQLITE_FLOAT:
				FUNC5(&zargs[i + is_agg], FUNC25(argv[i]));
				break;

			case SQLITE_NULL:
				FUNC7(&zargs[i + is_agg]);
				break;

			case SQLITE_BLOB:
			case SQLITE3_TEXT:
			default:
				FUNC8(&zargs[i + is_agg], (char*)FUNC28(argv[i]), FUNC24(argv[i]));
				break;
		}
	}

	fc->fci.params = zargs;

	if ((ret = FUNC30(&fc->fci, &fc->fcc)) == FAILURE) {
		FUNC15(NULL, E_WARNING, "An error occurred while invoking the callback");
	}

	if (is_agg) {
		FUNC32(&zargs[0]);
	}

	/* clean up the params */
	if (fake_argc) {
		for (i = is_agg; i < argc + is_agg; i++) {
			FUNC32(&zargs[i]);
		}
		if (is_agg) {
			FUNC32(&zargs[1]);
		}
		FUNC14(zargs);
	}

	if (!is_agg || !argv) {
		/* only set the sqlite return value if we are a scalar function,
		 * or if we are finalizing an aggregate */
		if (!FUNC11(retval)) {
			switch (FUNC13(retval)) {
				case IS_LONG:
#if ZEND_LONG_MAX > 2147483647
					sqlite3_result_int64(context, Z_LVAL(retval));
#else
					FUNC20(context, FUNC12(retval));
#endif
					break;

				case IS_NULL:
					FUNC22(context);
					break;

				case IS_DOUBLE:
					FUNC18(context, FUNC10(retval));
					break;

				default: {
					zend_string *str = FUNC33(&retval);
					if (FUNC0(!str)) {
						ret = FAILURE;
						break;
					}
					FUNC23(context, FUNC2(str), FUNC1(str), SQLITE_TRANSIENT);
					FUNC31(str);
					break;
				}
			}
		} else {
			FUNC19(context, "failed to invoke callback", 0);
		}

		if (agg_context && !FUNC11(agg_context->zval_context)) {
			FUNC32(&agg_context->zval_context);
		}
	} else {
		/* we're stepping in an aggregate; the return value goes into
		 * the context */
		if (agg_context && !FUNC11(agg_context->zval_context)) {
			FUNC32(&agg_context->zval_context);
		}
		FUNC4(&agg_context->zval_context, &retval);
		FUNC9(&retval);
	}

	if (!FUNC11(retval)) {
		FUNC32(&retval);
	}
	return ret;
}