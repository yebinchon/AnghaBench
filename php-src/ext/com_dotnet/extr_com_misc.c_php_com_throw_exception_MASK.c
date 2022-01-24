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
typedef  int /*<<< orphan*/  zend_long ;
typedef  scalar_t__ uint32_t ;
typedef  scalar_t__ HRESULT ;

/* Variables and functions */
 int /*<<< orphan*/  php_com_exception_class_entry ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 char* FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 

void FUNC3(HRESULT code, char *message)
{
	int free_msg = 0;
	if (message == NULL) {
		message = FUNC1(code);
		free_msg = 1;
	}
#if SIZEOF_ZEND_LONG == 8
	zend_throw_exception(php_com_exception_class_entry, message, (zend_long)(uint32_t)code);
#else
	FUNC2(php_com_exception_class_entry, message, (zend_long)code);
#endif
	if (free_msg) {
		FUNC0(message);
	}
}