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
typedef  int /*<<< orphan*/  zend_string ;
typedef  int /*<<< orphan*/  php_conv_err_t ;
typedef  int /*<<< orphan*/  HashTable ;

/* Variables and functions */
 int /*<<< orphan*/  PHP_CONV_ERR_NOT_FOUND ; 
 int /*<<< orphan*/  PHP_CONV_ERR_SUCCESS ; 
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ,int) ; 
 char* FUNC3 (int,int) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ *,char*,size_t) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ **) ; 

__attribute__((used)) static php_conv_err_t FUNC7(const HashTable *ht, char **pretval, size_t *pretval_len, char *field_name, size_t field_name_len, int persistent)
{
	zval *tmpval;

	*pretval = NULL;
	*pretval_len = 0;

	if ((tmpval = FUNC4((HashTable *)ht, field_name, field_name_len-1)) != NULL) {
		zend_string *tmp;
		zend_string *str = FUNC6(tmpval, &tmp);

		*pretval = FUNC3(FUNC0(str) + 1, persistent);
		*pretval_len = FUNC0(str);
		FUNC2(*pretval, FUNC1(str), FUNC0(str) + 1);
		FUNC5(tmp);
	} else {
		return PHP_CONV_ERR_NOT_FOUND;
	}
	return PHP_CONV_ERR_SUCCESS;
}