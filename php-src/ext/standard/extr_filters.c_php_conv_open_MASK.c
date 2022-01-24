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
typedef  int /*<<< orphan*/  php_conv_qprint_encode ;
typedef  int /*<<< orphan*/  php_conv_qprint_decode ;
typedef  int /*<<< orphan*/  php_conv_base64_encode ;
typedef  int /*<<< orphan*/  php_conv_base64_decode ;
typedef  char php_conv ;
typedef  int /*<<< orphan*/  HashTable ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/  const*,int,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/  const*,char*,size_t,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/  const*,unsigned int,char*) ; 
#define  PHP_CONV_BASE64_DECODE 131 
#define  PHP_CONV_BASE64_ENCODE 130 
#define  PHP_CONV_QPRINT_DECODE 129 
#define  PHP_CONV_QPRINT_ENCODE 128 
 int PHP_CONV_QPRINT_OPT_BINARY ; 
 int PHP_CONV_QPRINT_OPT_FORCE_ENCODE_FIRST ; 
 int /*<<< orphan*/  FUNC3 (char*,int) ; 
 char* FUNC4 (int,int) ; 
 char* FUNC5 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,unsigned int,char*,size_t,int,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,char*,size_t,int,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,unsigned int,char*,size_t,int,int,int) ; 

__attribute__((used)) static php_conv *FUNC10(int conv_mode, const HashTable *options, int persistent)
{
	/* FIXME: I'll have to replace this ugly code by something neat
	   (factories?) in the near future. */
	php_conv *retval = NULL;

	switch (conv_mode) {
		case PHP_CONV_BASE64_ENCODE: {
			unsigned int line_len = 0;
			char *lbchars = NULL;
			size_t lbchars_len;

			if (options != NULL) {
				FUNC1(options, lbchars, lbchars_len, "line-break-chars", 0);
				FUNC2(options, line_len, "line-length");
				if (line_len < 4) {
					if (lbchars != NULL) {
						FUNC3(lbchars, 0);
					}
					lbchars = NULL;
				} else {
					if (lbchars == NULL) {
						lbchars = FUNC5("\r\n", 0);
						lbchars_len = 2;
					}
				}
			}
			retval = FUNC4(sizeof(php_conv_base64_encode), persistent);
			if (lbchars != NULL) {
				if (FUNC7((php_conv_base64_encode *)retval, line_len, lbchars, lbchars_len, 1, persistent)) {
					if (lbchars != NULL) {
						FUNC3(lbchars, 0);
					}
					goto out_failure;
				}
				FUNC3(lbchars, 0);
			} else {
				if (FUNC7((php_conv_base64_encode *)retval, 0, NULL, 0, 0, persistent)) {
					goto out_failure;
				}
			}
		} break;

		case PHP_CONV_BASE64_DECODE:
			retval = FUNC4(sizeof(php_conv_base64_decode), persistent);
			if (FUNC6((php_conv_base64_decode *)retval)) {
				goto out_failure;
			}
			break;

		case PHP_CONV_QPRINT_ENCODE: {
			unsigned int line_len = 0;
			char *lbchars = NULL;
			size_t lbchars_len;
			int opts = 0;

			if (options != NULL) {
				int opt_binary = 0;
				int opt_force_encode_first = 0;

				FUNC1(options, lbchars, lbchars_len, "line-break-chars", 0);
				FUNC2(options, line_len, "line-length");
				FUNC0(options, opt_binary, "binary");
				FUNC0(options, opt_force_encode_first, "force-encode-first");

				if (line_len < 4) {
					if (lbchars != NULL) {
						FUNC3(lbchars, 0);
					}
					lbchars = NULL;
				} else {
					if (lbchars == NULL) {
						lbchars = FUNC5("\r\n", 0);
						lbchars_len = 2;
					}
				}
				opts |= (opt_binary ? PHP_CONV_QPRINT_OPT_BINARY : 0);
				opts |= (opt_force_encode_first ? PHP_CONV_QPRINT_OPT_FORCE_ENCODE_FIRST : 0);
			}
			retval = FUNC4(sizeof(php_conv_qprint_encode), persistent);
			if (lbchars != NULL) {
				if (FUNC9((php_conv_qprint_encode *)retval, line_len, lbchars, lbchars_len, 1, opts, persistent)) {
					FUNC3(lbchars, 0);
					goto out_failure;
				}
				FUNC3(lbchars, 0);
			} else {
				if (FUNC9((php_conv_qprint_encode *)retval, 0, NULL, 0, 0, opts, persistent)) {
					goto out_failure;
				}
			}
		} break;

		case PHP_CONV_QPRINT_DECODE: {
			char *lbchars = NULL;
			size_t lbchars_len;

			if (options != NULL) {
				/* If line-break-chars are not specified, filter will attempt to detect line endings (\r, \n, or \r\n) */
				FUNC1(options, lbchars, lbchars_len, "line-break-chars", 0);
			}

			retval = FUNC4(sizeof(php_conv_qprint_decode), persistent);
			if (lbchars != NULL) {
				if (FUNC8((php_conv_qprint_decode *)retval, lbchars, lbchars_len, 1, persistent)) {
					FUNC3(lbchars, 0);
					goto out_failure;
				}
				FUNC3(lbchars, 0);
			} else {
				if (FUNC8((php_conv_qprint_decode *)retval, NULL, 0, 0, persistent)) {
					goto out_failure;
				}
			}
		} break;

		default:
			retval = NULL;
			break;
	}
	return retval;

out_failure:
	if (retval != NULL) {
		FUNC3(retval, persistent);
	}
	return NULL;
}