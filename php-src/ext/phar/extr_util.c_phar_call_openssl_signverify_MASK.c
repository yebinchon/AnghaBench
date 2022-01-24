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
typedef  int /*<<< orphan*/  zend_string ;
typedef  scalar_t__ zend_off_t ;
typedef  int /*<<< orphan*/  zend_fcall_info_cache ;
struct TYPE_4__ {int param_count; int /*<<< orphan*/ * retval; int /*<<< orphan*/ * params; } ;
typedef  TYPE_1__ zend_fcall_info ;
typedef  int /*<<< orphan*/  php_stream ;

/* Variables and functions */
 int FAILURE ; 
#define  IS_FALSE 130 
#define  IS_LONG 129 
#define  IS_TRUE 128 
 int SUCCESS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,size_t) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int FUNC7 (int /*<<< orphan*/ ) ; 
 size_t FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int FUNC10 (int /*<<< orphan*/ ) ; 
 char* FUNC11 (int /*<<< orphan*/ ,size_t) ; 
 int /*<<< orphan*/ * FUNC12 (int /*<<< orphan*/ *,size_t,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int FUNC14 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 int FUNC15 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,TYPE_1__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC18(int is_sign, php_stream *fp, zend_off_t end, char *key, size_t key_len, char **signature, size_t *signature_len) /* {{{ */
{
	zend_fcall_info fci;
	zend_fcall_info_cache fcc;
	zval retval, zp[3], openssl;
	zend_string *str;

	FUNC3(&openssl, is_sign ? "openssl_sign" : "openssl_verify", is_sign ? sizeof("openssl_sign")-1 : sizeof("openssl_verify")-1);
	FUNC3(&zp[1], *signature, *signature_len);
	FUNC3(&zp[2], key, key_len);
	FUNC13(fp);
	str = FUNC12(fp, (size_t) end, 0);
	if (str) {
		FUNC2(&zp[0], str);
	} else {
		FUNC0(&zp[0]);
	}

	if ((size_t)end != FUNC8(zp[0])) {
		FUNC17(&zp[0]);
		FUNC17(&zp[1]);
		FUNC17(&zp[2]);
		FUNC17(&openssl);
		return FAILURE;
	}

	if (FAILURE == FUNC15(&openssl, 0, &fci, &fcc, NULL, NULL)) {
		FUNC17(&zp[0]);
		FUNC17(&zp[1]);
		FUNC17(&zp[2]);
		FUNC17(&openssl);
		return FAILURE;
	}

	fci.param_count = 3;
	fci.params = zp;
	FUNC5(zp[0]);
	if (is_sign) {
		FUNC1(&zp[1], &zp[1]);
	} else {
		FUNC5(zp[1]);
	}
	FUNC5(zp[2]);

	fci.retval = &retval;

	if (FAILURE == FUNC14(&fci, &fcc)) {
		FUNC17(&zp[0]);
		FUNC16(&zp[1]);
		FUNC17(&zp[2]);
		FUNC17(&openssl);
		return FAILURE;
	}

	FUNC17(&openssl);
	FUNC6(zp[0]);

	if (is_sign) {
		FUNC4(&zp[1]);
	} else {
		FUNC6(zp[1]);
	}
	FUNC6(zp[2]);

	FUNC17(&zp[0]);
	FUNC17(&zp[2]);

	switch (FUNC10(retval)) {
		default:
		case IS_LONG:
			FUNC16(&zp[1]);
			if (1 == FUNC7(retval)) {
				return SUCCESS;
			}
			return FAILURE;
		case IS_TRUE:
			*signature = FUNC11(FUNC9(zp[1]), FUNC8(zp[1]));
			*signature_len = FUNC8(zp[1]);
			FUNC16(&zp[1]);
			return SUCCESS;
		case IS_FALSE:
			FUNC16(&zp[1]);
			return FAILURE;
	}
}