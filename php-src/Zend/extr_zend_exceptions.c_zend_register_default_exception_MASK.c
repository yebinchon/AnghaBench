#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_23__   TYPE_8__ ;
typedef  struct TYPE_22__   TYPE_6__ ;
typedef  struct TYPE_21__   TYPE_1__ ;
typedef  struct TYPE_20__   TYPE_16__ ;
typedef  struct TYPE_19__   TYPE_15__ ;
typedef  struct TYPE_18__   TYPE_12__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  zend_object_handlers ;
typedef  int /*<<< orphan*/  zend_class_entry ;
struct TYPE_23__ {void* create_object; } ;
struct TYPE_22__ {void* create_object; } ;
struct TYPE_21__ {void* create_object; } ;
struct TYPE_20__ {int /*<<< orphan*/ * clone_obj; } ;
struct TYPE_19__ {void* create_object; } ;
struct TYPE_18__ {void* create_object; } ;

/* Variables and functions */
 int /*<<< orphan*/  E_ERROR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  Throwable ; 
 int /*<<< orphan*/  ZEND_ACC_PRIVATE ; 
 int /*<<< orphan*/  ZEND_ACC_PROTECTED ; 
 int /*<<< orphan*/ * default_exception_functions ; 
 TYPE_16__ default_exception_handlers ; 
 int /*<<< orphan*/ * error_exception_functions ; 
 int /*<<< orphan*/  FUNC2 (TYPE_16__*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  std_object_handlers ; 
 int /*<<< orphan*/  throwable ; 
 TYPE_15__* zend_ce_argument_count_error ; 
 TYPE_1__* zend_ce_arithmetic_error ; 
 TYPE_1__* zend_ce_compile_error ; 
 TYPE_12__* zend_ce_division_by_zero_error ; 
 TYPE_1__* zend_ce_error ; 
 TYPE_1__* zend_ce_error_exception ; 
 TYPE_1__* zend_ce_exception ; 
 TYPE_8__* zend_ce_parse_error ; 
 int /*<<< orphan*/  zend_ce_throwable ; 
 TYPE_1__* zend_ce_type_error ; 
 TYPE_6__* zend_ce_value_error ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,char*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,char*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,char*,int,char*,int /*<<< orphan*/ ) ; 
 void* zend_default_exception_new ; 
 void* zend_error_exception_new ; 
 void* FUNC7 (int /*<<< orphan*/ *,TYPE_1__*) ; 

void FUNC8(void) /* {{{ */
{
	zend_class_entry ce;

	FUNC1(throwable, Throwable);

	FUNC2(&default_exception_handlers, &std_object_handlers, sizeof(zend_object_handlers));
	default_exception_handlers.clone_obj = NULL;

	FUNC0(ce, "Exception", default_exception_functions);
	zend_ce_exception = FUNC7(&ce, NULL);
	zend_ce_exception->create_object = zend_default_exception_new;
	FUNC3(zend_ce_exception, 1, zend_ce_throwable);

	FUNC6(zend_ce_exception, "message", sizeof("message")-1, "", ZEND_ACC_PROTECTED);
	FUNC6(zend_ce_exception, "string", sizeof("string")-1, "", ZEND_ACC_PRIVATE);
	FUNC4(zend_ce_exception, "code", sizeof("code")-1, 0, ZEND_ACC_PROTECTED);
	FUNC5(zend_ce_exception, "file", sizeof("file")-1, ZEND_ACC_PROTECTED);
	FUNC5(zend_ce_exception, "line", sizeof("line")-1, ZEND_ACC_PROTECTED);
	FUNC5(zend_ce_exception, "trace", sizeof("trace")-1, ZEND_ACC_PRIVATE);
	FUNC5(zend_ce_exception, "previous", sizeof("previous")-1, ZEND_ACC_PRIVATE);

	FUNC0(ce, "ErrorException", error_exception_functions);
	zend_ce_error_exception = FUNC7(&ce, zend_ce_exception);
	zend_ce_error_exception->create_object = zend_error_exception_new;
	FUNC4(zend_ce_error_exception, "severity", sizeof("severity")-1, E_ERROR, ZEND_ACC_PROTECTED);

	FUNC0(ce, "Error", default_exception_functions);
	zend_ce_error = FUNC7(&ce, NULL);
	zend_ce_error->create_object = zend_default_exception_new;
	FUNC3(zend_ce_error, 1, zend_ce_throwable);

	FUNC6(zend_ce_error, "message", sizeof("message")-1, "", ZEND_ACC_PROTECTED);
	FUNC6(zend_ce_error, "string", sizeof("string")-1, "", ZEND_ACC_PRIVATE);
	FUNC4(zend_ce_error, "code", sizeof("code")-1, 0, ZEND_ACC_PROTECTED);
	FUNC5(zend_ce_error, "file", sizeof("file")-1, ZEND_ACC_PROTECTED);
	FUNC5(zend_ce_error, "line", sizeof("line")-1, ZEND_ACC_PROTECTED);
	FUNC5(zend_ce_error, "trace", sizeof("trace")-1, ZEND_ACC_PRIVATE);
	FUNC5(zend_ce_error, "previous", sizeof("previous")-1, ZEND_ACC_PRIVATE);

	FUNC0(ce, "CompileError", NULL);
	zend_ce_compile_error = FUNC7(&ce, zend_ce_error);
	zend_ce_compile_error->create_object = zend_default_exception_new;

	FUNC0(ce, "ParseError", NULL);
	zend_ce_parse_error = FUNC7(&ce, zend_ce_compile_error);
	zend_ce_parse_error->create_object = zend_default_exception_new;

	FUNC0(ce, "TypeError", NULL);
	zend_ce_type_error = FUNC7(&ce, zend_ce_error);
	zend_ce_type_error->create_object = zend_default_exception_new;

	FUNC0(ce, "ArgumentCountError", NULL);
	zend_ce_argument_count_error = FUNC7(&ce, zend_ce_type_error);
	zend_ce_argument_count_error->create_object = zend_default_exception_new;

	FUNC0(ce, "ValueError", NULL);
	zend_ce_value_error = FUNC7(&ce, zend_ce_error);
	zend_ce_value_error->create_object = zend_default_exception_new;

	FUNC0(ce, "ArithmeticError", NULL);
	zend_ce_arithmetic_error = FUNC7(&ce, zend_ce_error);
	zend_ce_arithmetic_error->create_object = zend_default_exception_new;

	FUNC0(ce, "DivisionByZeroError", NULL);
	zend_ce_division_by_zero_error = FUNC7(&ce, zend_ce_arithmetic_error);
	zend_ce_division_by_zero_error->create_object = zend_default_exception_new;
}