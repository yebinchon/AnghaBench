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
typedef  int /*<<< orphan*/  X509_NAME_ENTRY ;
typedef  int /*<<< orphan*/  X509_NAME ;
typedef  int /*<<< orphan*/  ASN1_STRING ;
typedef  int /*<<< orphan*/  ASN1_OBJECT ;

/* Variables and functions */
 unsigned char* FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (unsigned char**,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ IS_ARRAY ; 
 scalar_t__ IS_STRING ; 
 scalar_t__ FUNC4 (int) ; 
 scalar_t__ FUNC5 (int) ; 
 int FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (unsigned char*) ; 
 scalar_t__ V_ASN1_UTF8STRING ; 
 int /*<<< orphan*/ * FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC9 (int /*<<< orphan*/ *) ; 
 int FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC11 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC16 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *,char*,char*,int) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ *,char const*,int) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC21 () ; 
 int /*<<< orphan*/  FUNC22 (char*) ; 
 int /*<<< orphan*/ * FUNC23 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC24 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC25 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC26(zval * val, char * key, X509_NAME * name, int shortname) /* {{{ */
{
	zval *data;
	zval subitem, tmp;
	int i;
	char *sname;
	int nid;
	X509_NAME_ENTRY * ne;
	ASN1_STRING * str = NULL;
	ASN1_OBJECT * obj;

	if (key != NULL) {
		FUNC20(&subitem);
	} else {
		FUNC12(&subitem, val);
	}

	for (i = 0; i < FUNC10(name); i++) {
		const unsigned char *to_add = NULL;
		int to_add_len = 0;
		unsigned char *to_add_buf = NULL;

		ne = FUNC11(name, i);
		obj = FUNC9(ne);
		nid = FUNC6(obj);

		if (shortname) {
			sname = (char *) FUNC5(nid);
		} else {
			sname = (char *) FUNC4(nid);
		}

		str = FUNC8(ne);
		if (FUNC3(str) != V_ASN1_UTF8STRING) {
			/* ASN1_STRING_to_UTF8(3): The converted data is copied into a newly allocated buffer */
			to_add_len = FUNC2(&to_add_buf, str);
			to_add = to_add_buf;
		} else {
			/* ASN1_STRING_get0_data(3): Since this is an internal pointer it should not be freed or modified in any way */
			to_add = FUNC0(str);
			to_add_len = FUNC1(str);
		}

		if (to_add_len != -1) {
			if ((data = FUNC23(FUNC13(subitem), sname, FUNC22(sname))) != NULL) {
				if (FUNC16(data) == IS_ARRAY) {
					FUNC19(data, (const char *)to_add, to_add_len);
				} else if (FUNC16(data) == IS_STRING) {
					FUNC20(&tmp);
					FUNC18(&tmp, FUNC25(FUNC15(data)));
					FUNC19(&tmp, (const char *)to_add, to_add_len);
					FUNC24(FUNC13(subitem), sname, FUNC22(sname), &tmp);
				}
			} else {
				/* it might be better to expand it and pass zval from ZVAL_STRING
				 * to zend_symtable_str_update so we do not silently drop const
				 * but we need a test to cover this part first */
				FUNC17(&subitem, sname, (char *)to_add, to_add_len);
			}
		} else {
			FUNC21();
		}

		if (to_add_buf != NULL) {
			FUNC7(to_add_buf);
		}
	}

	if (key != NULL) {
		FUNC24(FUNC14(val), key, FUNC22(key), &subitem);
	}
}