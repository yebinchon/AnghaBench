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
typedef  int /*<<< orphan*/  zend_long ;
struct TYPE_5__ {int has_error; } ;
struct TYPE_6__ {TYPE_1__ err; } ;
typedef  TYPE_2__ ser_context ;

/* Variables and functions */
#define  IS_DOUBLE 131 
#define  IS_LONG 130 
#define  IS_OBJECT 129 
#define  IS_STRING 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,double) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 char* FUNC7 (int /*<<< orphan*/  const*) ; 
 int FUNC8 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_2__*,char*,char*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,double*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static zend_long FUNC15(const zval *arr_value, ser_context *ctx)
{
	zend_long ret = 0;
	zval lzval;

	FUNC3(&lzval);
	if (FUNC8(arr_value) != IS_LONG) {
		FUNC0(&lzval, (zval *)arr_value);
		arr_value = &lzval;
	}

	switch (FUNC8(arr_value)) {
	case IS_LONG:
long_case:
		ret = FUNC4(arr_value);
		break;

	/* if not long we're operating on lzval */
	case IS_DOUBLE:
double_case:
		FUNC9(&lzval);
		goto long_case;

	case IS_OBJECT:
	case IS_STRING: {
		zend_long lval;
		double dval;

		if (!FUNC12(&lzval)) {
			ctx->err.has_error = 1;
			break;
		}

		switch (FUNC11(FUNC6(lzval), FUNC5(lzval), &lval, &dval, 0)) {
		case IS_DOUBLE:
			FUNC14(&lzval);
			FUNC1(&lzval, dval);
			goto double_case;

		case IS_LONG:
			FUNC14(&lzval);
			FUNC2(&lzval, lval);
			goto long_case;
		}

		/* if we get here, we don't have a numeric string */
		FUNC10(ctx, "expected an integer, but got a non numeric "
				"string (possibly from a converted object): '%s'", FUNC7(arr_value));
		break;
	}

	default:
		FUNC10(ctx, "%s", "expected an integer, either of a PHP "
				"integer type or of a convertible type");
		break;
	}

	FUNC13(&lzval);

	return ret;
}