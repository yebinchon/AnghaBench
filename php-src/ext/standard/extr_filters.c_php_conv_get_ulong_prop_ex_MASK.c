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
typedef  scalar_t__ zend_ulong ;
typedef  scalar_t__ zend_long ;
typedef  int /*<<< orphan*/  php_conv_err_t ;
typedef  int /*<<< orphan*/  HashTable ;

/* Variables and functions */
 int /*<<< orphan*/  PHP_CONV_ERR_NOT_FOUND ; 
 int /*<<< orphan*/  PHP_CONV_ERR_SUCCESS ; 
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ *,char*,size_t) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static php_conv_err_t FUNC2(const HashTable *ht, zend_ulong *pretval, char *field_name, size_t field_name_len)
{
	zval *tmpval = FUNC0((HashTable *)ht, field_name, field_name_len-1);
	if (tmpval != NULL) {
		zend_long lval = FUNC1(tmpval);

		if (lval < 0) {
			*pretval = 0;
		} else {
			*pretval = lval;
		}
		return PHP_CONV_ERR_SUCCESS;
	} else {
		*pretval = 0;
		return PHP_CONV_ERR_NOT_FOUND;
	}
}