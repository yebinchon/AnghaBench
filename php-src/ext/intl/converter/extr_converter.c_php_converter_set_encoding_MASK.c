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
typedef  int zend_bool ;
typedef  int /*<<< orphan*/  php_converter_object ;
typedef  scalar_t__ UErrorCode ;
typedef  int /*<<< orphan*/  UConverter ;

/* Variables and functions */
 int /*<<< orphan*/  E_WARNING ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,scalar_t__) ; 
 scalar_t__ U_AMBIGUOUS_ALIAS_WARNING ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 scalar_t__ U_ZERO_ERROR ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 char* FUNC6 (int /*<<< orphan*/ *,scalar_t__*) ; 
 int /*<<< orphan*/ * FUNC7 (char const*,scalar_t__*) ; 

__attribute__((used)) static zend_bool FUNC8(php_converter_object *objval,
                                            UConverter **pcnv,
                                            const char *enc, size_t enc_len
                                           ) {
	UErrorCode error = U_ZERO_ERROR;
	UConverter *cnv = FUNC7(enc, &error);

	if (error == U_AMBIGUOUS_ALIAS_WARNING) {
		UErrorCode getname_error = U_ZERO_ERROR;
		const char *actual_encoding = FUNC6(cnv, &getname_error);
		if (FUNC1(getname_error)) {
			/* Should never happen */
			actual_encoding = "(unknown)";
		}
		FUNC3(NULL, E_WARNING, "Ambiguous encoding specified, using %s", actual_encoding);
	} else if (FUNC1(error)) {
		if (objval) {
			FUNC0(objval, "ucnv_open", error);
		} else {
			FUNC3(NULL, E_WARNING, "Error setting encoding: %d - %s", (int)error, FUNC4(error));
		}
		return 0;
	}

	if (objval && !FUNC2(objval, cnv)) {
		return 0;
	}

	if (*pcnv) {
		FUNC5(*pcnv);
	}
	*pcnv = cnv;
	return 1;
}