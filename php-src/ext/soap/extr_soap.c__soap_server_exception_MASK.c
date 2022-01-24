#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  zval ;
typedef  int /*<<< orphan*/  zend_string ;
typedef  TYPE_1__* soapServicePtr ;
typedef  int /*<<< orphan*/  sdlFunctionPtr ;
struct TYPE_3__ {scalar_t__ send_errors; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 char* FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,char*,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  exception ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  soap_fault_class_entry ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  zend_ce_error ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,char*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC9 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC10(soapServicePtr service, sdlFunctionPtr function, zval *this_ptr) /* {{{ */
{
	zval exception_object;

	FUNC2(&exception_object, FUNC0(exception));
	if (FUNC5(FUNC3(exception_object), soap_fault_class_entry)) {
		FUNC6(function, &exception_object, NULL);
	} else if (FUNC5(FUNC3(exception_object), zend_ce_error)) {
		if (service->send_errors) {
			zval rv;
			zend_string *msg = FUNC9(FUNC7(zend_ce_error, &exception_object, "message", sizeof("message")-1, 0, &rv));
			FUNC4(&exception_object, this_ptr, "Server", FUNC1(msg), NULL, NULL);
			FUNC8(msg, 0);
		} else {
			FUNC4(&exception_object, this_ptr, "Server", "Internal Error", NULL, NULL);
		}
		FUNC6(function, &exception_object, NULL);
	}
}