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
typedef  int zend_bool ;
struct TYPE_5__ {scalar_t__ ce; } ;
struct TYPE_6__ {TYPE_1__ obj; } ;
typedef  TYPE_2__ php_converter_object ;
typedef  int /*<<< orphan*/  UErrorCode ;
typedef  int /*<<< orphan*/  UConverterToUCallback ;
typedef  int /*<<< orphan*/  UConverterFromUCallback ;
typedef  int /*<<< orphan*/  UConverter ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_2__*,char*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  U_ZERO_ERROR ; 
 scalar_t__ php_converter_ce ; 
 scalar_t__ php_converter_from_u_callback ; 
 scalar_t__ php_converter_to_u_callback ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,void const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,void const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static inline zend_bool FUNC4(php_converter_object *objval, UConverter *cnv) {
	zend_bool ret = 1;
	UErrorCode error = U_ZERO_ERROR;

	if (objval->obj.ce == php_converter_ce) {
		/* Short-circuit having to go through method calls and data marshalling
		 * when we're using default behavior
		 */
		return 1;
	}

	FUNC3(cnv, (UConverterToUCallback)php_converter_to_u_callback, (const void*)objval,
                                 NULL, NULL, &error);
	if (FUNC1(error)) {
		FUNC0(objval, "ucnv_setToUCallBack", error);
		ret = 0;
	}

	error = U_ZERO_ERROR;
	FUNC2(cnv, (UConverterFromUCallback)php_converter_from_u_callback, (const void*)objval,
                                    NULL, NULL, &error);
	if (FUNC1(error)) {
		FUNC0(objval, "ucnv_setFromUCallBack", error);
		ret = 0;
	}
	return ret;
}