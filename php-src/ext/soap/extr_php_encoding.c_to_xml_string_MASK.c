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
typedef  int /*<<< orphan*/  xmlNodePtr ;
typedef  int /*<<< orphan*/  xmlBufferPtr ;
typedef  int /*<<< orphan*/  encodeTypePtr ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  E_ERROR ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 scalar_t__ IS_STRING ; 
 int SOAP_ENCODED ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (char*) ; 
 char* FUNC9 (int) ; 
 int /*<<< orphan*/  encoding ; 
 char* FUNC10 (char*) ; 
 char* FUNC11 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC12 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ,char*,char*) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC17 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 () ; 
 int /*<<< orphan*/  FUNC19 (char*,int) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ ) ; 
 int FUNC21 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC22 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC23 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC24 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC25 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static xmlNodePtr FUNC26(encodeTypePtr type, zval *data, int style, xmlNodePtr parent)
{
	xmlNodePtr ret, text;
	char *str;
	int new_len;

	ret = FUNC22(NULL, FUNC0("BOGUS"));
	FUNC16(parent, ret);
	FUNC1(data, ret, style);

	if (FUNC7(data) == IS_STRING) {
		str = FUNC11(FUNC6(data), FUNC5(data));
		new_len = FUNC5(data);
	} else {
		zend_string *tmp = FUNC25(data);
		str = FUNC11(FUNC4(tmp), FUNC3(tmp));
		new_len = FUNC3(tmp);
		FUNC24(tmp, 0);
	}

	if (FUNC2(encoding) != NULL) {
		xmlBufferPtr in  = FUNC19(str, new_len);
		xmlBufferPtr out = FUNC18();
		int n = FUNC21(FUNC2(encoding), out, in);

		if (n >= 0) {
			FUNC8(str);
			str = FUNC10((char*)FUNC17(out));
			new_len = n;
		}
		FUNC20(out);
		FUNC20(in);
	}

	if (!FUNC13(FUNC0(str))) {
		char *err = FUNC9(new_len + 8);
		char c;
		int i;

		FUNC12(err, str, new_len+1);
		for (i = 0; (c = err[i++]);) {
			if ((c & 0x80) == 0) {
			} else if ((c & 0xe0) == 0xc0) {
				if ((err[i] & 0xc0) != 0x80) {
					break;
				}
				i++;
			} else if ((c & 0xf0) == 0xe0) {
				if ((err[i] & 0xc0) != 0x80 || (err[i+1] & 0xc0) != 0x80) {
					break;
				}
				i += 2;
			} else if ((c & 0xf8) == 0xf0) {
				if ((err[i] & 0xc0) != 0x80 || (err[i+1] & 0xc0) != 0x80 || (err[i+2] & 0xc0) != 0x80) {
					break;
				}
				i += 3;
			} else {
				break;
			}
		}
		if (c) {
			err[i-1] = '\\';
			err[i++] = 'x';
			err[i++] = ((unsigned char)c >> 4) + ((((unsigned char)c >> 4) > 9) ? ('a' - 10) : '0');
			err[i++] = (c & 15) + (((c & 15) > 9) ? ('a' - 10) : '0');
			err[i++] = '.';
			err[i++] = '.';
			err[i++] = '.';
			err[i++] = 0;
		}

		FUNC15(E_ERROR,  "Encoding: string '%s' is not a valid utf-8 string", err);
	}

	text = FUNC23(FUNC0(str), new_len);
	FUNC16(ret, text);
	FUNC8(str);

	if (style == SOAP_ENCODED) {
		FUNC14(ret, type);
	}
	return ret;
}