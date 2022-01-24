#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  zval ;

/* Variables and functions */
#define  ZEND_INI_PARSER_ENTRY 130 
#define  ZEND_INI_PARSER_POP_ENTRY 129 
#define  ZEND_INI_PARSER_SECTION 128 
 int /*<<< orphan*/  ZLOG_ERROR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int*) ; 
 int /*<<< orphan*/  ini_filename ; 
 int /*<<< orphan*/  ini_lineno ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(zval *arg1, zval *arg2, zval *arg3, int callback_type, void *arg) /* {{{ */
{
	int *error;

	if (!arg1 || !arg) return;
	error = (int *)arg;
	if (*error) return; /* We got already an error. Switch to the end. */

	switch(callback_type) {
		case ZEND_INI_PARSER_ENTRY:
			FUNC1(arg1, arg2, error);
			break;
		case ZEND_INI_PARSER_SECTION:
			FUNC2(arg1, error);
			break;
		case ZEND_INI_PARSER_POP_ENTRY:
			FUNC0(arg1, arg3, arg2, error);
			break;
		default:
			FUNC3(ZLOG_ERROR, "[%s:%d] Unknown INI syntax", ini_filename, ini_lineno);
			*error = 1;
			break;
	}
}