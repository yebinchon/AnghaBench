#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  zend_string ;
struct TYPE_3__ {int /*<<< orphan*/ * name; int /*<<< orphan*/  constants_table; int /*<<< orphan*/  function_table; } ;
typedef  TYPE_1__ zend_class_entry ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 char* FUNC2 (int /*<<< orphan*/ *) ; 
 char* FUNC3 (char*,size_t,int*) ; 
 char* FUNC4 (char const*,size_t,int*,int /*<<< orphan*/ *) ; 
 char* FUNC5 (char*,size_t,int*,int /*<<< orphan*/ *) ; 
 char* FUNC6 (char const*,size_t,int*) ; 
 char* FUNC7 (char const*,size_t,int*) ; 
 int cli_completion_state ; 
 int /*<<< orphan*/  FUNC8 (char*) ; 
 int /*<<< orphan*/  FUNC9 (char*) ; 
 int /*<<< orphan*/  function_table ; 
 char* FUNC10 (size_t) ; 
 int /*<<< orphan*/  FUNC11 (char*,size_t,char*,char*,char*) ; 
 int FUNC12 (char const*) ; 
 char* FUNC13 (char const*,char*) ; 
 int /*<<< orphan*/  zend_constants ; 
 TYPE_1__* FUNC14 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (char*,char const*,size_t) ; 
 char* FUNC16 (char const*,size_t) ; 
 int /*<<< orphan*/ * FUNC17 (size_t,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static char *FUNC19(const char *text, int index) /* {{{ */
{
/*
TODO:
- constants
- maybe array keys
- language constructs and other things outside a hashtable (echo, try, function, class, ...)
- object/class members

- future: respect scope ("php > function foo() { $[tab]" should only expand to local variables...)
*/
	char *retval = NULL;
	size_t textlen = FUNC12(text);

	if (!index) {
		cli_completion_state = 0;
	}
	if (text[0] == '$') {
		retval = FUNC7(text, textlen, &cli_completion_state);
	} else if (text[0] == '#') {
		retval = FUNC6(text, textlen, &cli_completion_state);
	} else {
		char *lc_text, *class_name_end;
		zend_string *class_name = NULL;
		zend_class_entry *ce = NULL;

		class_name_end = FUNC13(text, "::");
		if (class_name_end) {
			size_t class_name_len = class_name_end - text;
			class_name = FUNC17(class_name_len, 0);
			FUNC15(FUNC2(class_name), text, class_name_len);
			if ((ce = FUNC14(class_name)) == NULL) {
				FUNC18(class_name, 0);
				return NULL;
			}
			lc_text = FUNC16(class_name_end + 2, textlen - 2 - class_name_len);
			textlen -= (class_name_len + 2);
		} else {
			lc_text = FUNC16(text, textlen);
		}

		switch (cli_completion_state) {
			case 0:
			case 1:
				retval = FUNC5(lc_text, textlen, &cli_completion_state, ce ? &ce->function_table : FUNC0(function_table));
				if (retval) {
					break;
				}
			case 2:
			case 3:
				retval = FUNC4(text, textlen, &cli_completion_state, ce ? &ce->constants_table : FUNC0(zend_constants));
				if (retval || ce) {
					break;
				}
			case 4:
			case 5:
				retval = FUNC3(lc_text, textlen, &cli_completion_state);
				break;
			default:
				break;
		}
		FUNC8(lc_text);
		if (class_name) {
			FUNC18(class_name, 0);
		}
		if (ce && retval) {
			size_t len = FUNC1(ce->name) + 2 + FUNC12(retval) + 1;
			char *tmp = FUNC10(len);

			FUNC11(tmp, len, "%s::%s", FUNC2(ce->name), retval);
			FUNC9(retval);
			retval = tmp;
		}
	}

	return retval;
}