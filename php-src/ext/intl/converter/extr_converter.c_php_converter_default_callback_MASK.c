#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  zval ;
typedef  int zend_long ;
struct TYPE_4__ {int /*<<< orphan*/  src; } ;
typedef  TYPE_1__ php_converter_object ;
typedef  int int8_t ;
typedef  int /*<<< orphan*/  chars ;
typedef  int /*<<< orphan*/  UErrorCode ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (char*,int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,char*,int /*<<< orphan*/ ) ; 
#define  UCNV_ILLEGAL 130 
#define  UCNV_IRREGULAR 129 
#define  UCNV_UNASSIGNED 128 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  U_INVALID_STATE_ERROR ; 
 int /*<<< orphan*/  U_ZERO_ERROR ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char*,int*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC9(zval *return_value, zval *zobj, zend_long reason, zval *error) {
	FUNC4(error);
	FUNC8(error);
	FUNC5(error, U_ZERO_ERROR);
	/* Basic functionality so children can call parent::toUCallback() */
	switch (reason) {
		case UCNV_UNASSIGNED:
		case UCNV_ILLEGAL:
		case UCNV_IRREGULAR:
		{
			php_converter_object *objval = (php_converter_object*)FUNC0(zobj);
			char chars[127];
			int8_t chars_len = sizeof(chars);
			UErrorCode uerror = U_ZERO_ERROR;
            if(!objval->src) {
                FUNC6(objval, U_INVALID_STATE_ERROR, "Source Converter has not been initialized yet");
				chars[0] = 0x1A;
				chars[1] = 0;
				chars_len = 1;
                FUNC5(error, U_INVALID_STATE_ERROR);
                FUNC1(chars, chars_len);
                return;
            }

			/* Yes, this is fairly wasteful at first glance,
			 * but considering that the alternative is to store
			 * what's sent into setSubstChars() and the fact
			 * that this is an extremely unlikely codepath
			 * I'd rather take the CPU hit here, than waste time
			 * storing a value I'm unlikely to use.
			 */
			FUNC7(objval->src, chars, &chars_len, &uerror);
			if (FUNC3(uerror)) {
				FUNC2(objval, "ucnv_getSubstChars", uerror);
				chars[0] = 0x1A;
				chars[1] = 0;
				chars_len = 1;
            	FUNC5(error, uerror);
			}
			FUNC1(chars, chars_len);
		}
	}
}