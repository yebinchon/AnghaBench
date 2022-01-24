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
typedef  int /*<<< orphan*/  zend_unserialize_data ;
typedef  int /*<<< orphan*/  zend_object ;
typedef  int /*<<< orphan*/  zend_class_entry ;
typedef  int /*<<< orphan*/  php_unserialize_data_t ;
typedef  int /*<<< orphan*/  mpz_ptr ;
typedef  int /*<<< orphan*/  copy_ctor_func_t ;

/* Variables and functions */
 int FAILURE ; 
 scalar_t__ IS_ARRAY ; 
 scalar_t__ IS_STRING ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int SUCCESS ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *) ; 
 int FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,unsigned char const**,unsigned char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 scalar_t__ zval_add_ref ; 

__attribute__((used)) static int FUNC13(zval *object, zend_class_entry *ce, const unsigned char *buf, size_t buf_len, zend_unserialize_data *data) /* {{{ */
{
	mpz_ptr gmpnum;
	const unsigned char *p, *max;
	zval *zv;
	int retval = FAILURE;
	php_unserialize_data_t unserialize_data;
	zend_object *zobj;

	FUNC1(unserialize_data);
	FUNC6(object, &gmpnum);

	zobj = FUNC3(object);

	p = buf;
	max = buf + buf_len;

	zv = FUNC8(&unserialize_data);
	if (!FUNC7(zv, &p, max, &unserialize_data)
		|| FUNC4(zv) != IS_STRING
		|| FUNC5(gmpnum, zv, 10) == FAILURE
	) {
		FUNC12(NULL, "Could not unserialize number", 0);
		goto exit;
	}

	zv = FUNC8(&unserialize_data);
	if (!FUNC7(zv, &p, max, &unserialize_data)
		|| FUNC4(zv) != IS_ARRAY
	) {
		FUNC12(NULL, "Could not unserialize properties", 0);
		goto exit;
	}

	if (FUNC10(FUNC2(zv)) != 0) {
		FUNC9(
			FUNC11(zobj), FUNC2(zv),
			(copy_ctor_func_t) zval_add_ref
		);
	}

	retval = SUCCESS;
exit:
	FUNC0(unserialize_data);
	return retval;
}