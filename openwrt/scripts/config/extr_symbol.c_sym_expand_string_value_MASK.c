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
struct symbol {int dummy; } ;

/* Variables and functions */
 int SYMBOL_MAXLENGTH ; 
 scalar_t__ FUNC0 (char const) ; 
 char* FUNC1 (char*,size_t) ; 
 int /*<<< orphan*/  FUNC2 (char*,char const*) ; 
 char* FUNC3 (char const*,char) ; 
 int FUNC4 (char const*) ; 
 int /*<<< orphan*/  FUNC5 (char*,char const*,int) ; 
 int /*<<< orphan*/  FUNC6 (struct symbol*) ; 
 struct symbol* FUNC7 (char*) ; 
 char* FUNC8 (struct symbol*) ; 
 char* FUNC9 (size_t) ; 

const char *FUNC10(const char *in)
{
	const char *src;
	char *res;
	size_t reslen;

	reslen = FUNC4(in) + 1;
	res = FUNC9(reslen);
	res[0] = '\0';

	while ((src = FUNC3(in, '$'))) {
		char *p, name[SYMBOL_MAXLENGTH];
		const char *symval = "";
		struct symbol *sym;
		size_t newlen;

		FUNC5(res, in, src - in);
		src++;

		p = name;
		while (FUNC0(*src) || *src == '_')
			*p++ = *src++;
		*p = '\0';

		sym = FUNC7(name);
		if (sym != NULL) {
			FUNC6(sym);
			symval = FUNC8(sym);
		}

		newlen = FUNC4(res) + FUNC4(symval) + FUNC4(src) + 1;
		if (newlen > reslen) {
			reslen = newlen;
			res = FUNC1(res, reslen);
		}

		FUNC2(res, symval);
		in = src;
	}
	FUNC2(res, in);

	return res;
}