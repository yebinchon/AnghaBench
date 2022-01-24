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
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int /*<<< orphan*/  php_stream_filter ;
typedef  int /*<<< orphan*/  php_convert_filter ;

/* Variables and functions */
 int /*<<< orphan*/  E_WARNING ; 
 scalar_t__ IS_ARRAY ; 
 int PHP_CONV_BASE64_DECODE ; 
 int PHP_CONV_BASE64_ENCODE ; 
 int PHP_CONV_QPRINT_DECODE ; 
 int PHP_CONV_QPRINT_ENCODE ; 
 scalar_t__ SUCCESS ; 
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC3 (int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,char const*) ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (char*,char*) ; 
 char* FUNC8 (char const*,char) ; 
 int /*<<< orphan*/  strfilter_convert_ops ; 

__attribute__((used)) static php_stream_filter *FUNC9(const char *filtername, zval *filterparams, uint8_t persistent)
{
	php_convert_filter *inst;
	php_stream_filter *retval = NULL;

	char *dot;
	int conv_mode = 0;

	if (filterparams != NULL && FUNC1(filterparams) != IS_ARRAY) {
		FUNC5(NULL, E_WARNING, "stream filter (%s): invalid filter parameter", filtername);
		return NULL;
	}

	if ((dot = FUNC8(filtername, '.')) == NULL) {
		return NULL;
	}
	++dot;

	inst = FUNC3(sizeof(php_convert_filter), persistent);

	if (FUNC7(dot, "base64-encode") == 0) {
		conv_mode = PHP_CONV_BASE64_ENCODE;
	} else if (FUNC7(dot, "base64-decode") == 0) {
		conv_mode = PHP_CONV_BASE64_DECODE;
	} else if (FUNC7(dot, "quoted-printable-encode") == 0) {
		conv_mode = PHP_CONV_QPRINT_ENCODE;
	} else if (FUNC7(dot, "quoted-printable-decode") == 0) {
		conv_mode = PHP_CONV_QPRINT_DECODE;
	}

	if (FUNC4(inst, conv_mode,
		(filterparams != NULL ? FUNC0(filterparams) : NULL),
		filtername, persistent) != SUCCESS) {
		goto out;
	}

	retval = FUNC6(&strfilter_convert_ops, inst, persistent);
out:
	if (retval == NULL) {
		FUNC2(inst, persistent);
	}

	return retval;
}