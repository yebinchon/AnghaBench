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
struct TYPE_4__ {int amount_of_read_chars; int buff_for_parsing; } ;
typedef  TYPE_1__ SStateInfo ;
typedef  int EDemanglerErr ;

/* Variables and functions */
 int FUNC0 (char*) ; 
 int eDemanglerErrOK ; 
 int eDemanglerErrUncorrectMangledSymbol ; 
 int eDemanglerErrUnsupportedMangling ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 char* FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,char*) ; 
 char* FUNC4 (char*,...) ; 
 scalar_t__ FUNC5 (char*,char*,int) ; 

int FUNC6(char *sym, unsigned int *amount_of_read_chars, char **str_type_code) {
	EDemanglerErr err = eDemanglerErrOK;
	SStateInfo state;
	FUNC3 (&state, sym);
	const char template_param[] = "template-parameter-";
	char *tmp, *res = NULL;
	if (!FUNC5 (sym, "?", 1)) {
		// anonymous template param
		state.amount_of_read_chars += 1;
		state.buff_for_parsing += 1;
		res = FUNC2 (&state);
		if (res) {
			tmp = FUNC4("%s%s", template_param, res);
			FUNC1 (res);
			res = tmp;
		}
	} else {
		if (FUNC5 (sym, "$", 1)) {
			err = eDemanglerErrUncorrectMangledSymbol;
			goto get_template_params_err;
		}
		sym++;
		state.amount_of_read_chars += 2;
		state.buff_for_parsing += 2;
		if (!FUNC5 (sym, "0", 1)) {
			// Signed integer
			tmp = FUNC2 (&state);
			if (tmp) {
				int signed_a = FUNC0 (tmp);
				res = FUNC4 ("%d", signed_a);
				FUNC1 (tmp);
			}
		} else if (!FUNC5 (sym, "2", 1)) {
			// real value a ^ b
			char *a = FUNC2 (&state);
			char *b = FUNC2 (&state);
			if (a && b) {
				int signed_b = FUNC0 (b);
				res = FUNC4 ("%sE%d", a, signed_b);
			}
			FUNC1 (a);
			FUNC1 (b);
		} else if (!FUNC5 (sym, "D", 1)) {
			// anonymous template param
			res = FUNC2 (&state);
			if (res) {
				tmp = FUNC4("%s%s", template_param, res);
				FUNC1 (res);
				res = tmp;
			}
		} else if (!FUNC5 (sym, "F", 1)) {
			// Signed {a, b}
			char *a = FUNC2 (&state);
			char *b = FUNC2 (&state);
			if (a && b) {
				int signed_a = FUNC0 (a);
				int signed_b = FUNC0 (b);
				res = FUNC4 ("{%d, %d}", signed_a, signed_b);
			}
			FUNC1 (a);
			FUNC1 (b);
		} else if (!FUNC5 (sym, "G", 1)) {
			// Signed {a, b, c}
			char *a = FUNC2 (&state);
			char *b = FUNC2 (&state);
			char *c = FUNC2 (&state);
			if (a && b && c) {
				int signed_a = FUNC0 (a);
				int signed_b = FUNC0 (b);
				int signed_c = FUNC0 (c);
				res = FUNC4 ("{%d, %d, %d}", signed_a, signed_b, signed_c);
			}
			FUNC1 (a);
			FUNC1 (b);
			FUNC1 (c);
		} else if (!FUNC5 (sym, "H", 1)) {
			// Unsigned integer
			res = FUNC2 (&state);
		} else if (!FUNC5 (sym, "I", 1)) {
			// Unsigned {x, y}
			char *a = FUNC2 (&state);
			char *b = FUNC2 (&state);
			if (a && b) {
				res = FUNC4 ("{%s, %s}", a, b);
			}
			FUNC1 (a);
			FUNC1 (b);
		} else if (!FUNC5 (sym, "J", 1)) {
			// Unsigned {x, y, z}
			char *a = FUNC2 (&state);
			char *b = FUNC2 (&state);
			char *c = FUNC2 (&state);
			if (a && b && c) {
				res = FUNC4 ("{%s, %s, %s}", a, b, c);
			}
			FUNC1 (a);
			FUNC1 (b);
			FUNC1 (c);
		} else if (!FUNC5 (sym, "Q", 1)) {
			// anonymous non-type template parameter
			res = FUNC2 (&state);
			if (res) {
				tmp = FUNC4("non-type-%s%s", template_param, res);
				FUNC1 (res);
				res = tmp;
			}
		}
	}

	if (!res) {
		err = eDemanglerErrUnsupportedMangling;
		goto get_template_params_err;
	}

	*str_type_code = res;
	*amount_of_read_chars = state.amount_of_read_chars;

get_template_params_err:
	return err;
}