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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,char const*) ; 
 int /*<<< orphan*/  FUNC1 (char*,char const*) ; 
 int /*<<< orphan*/  FUNC2 (char*,char const*) ; 
 int FUNC3 (char const*) ; 

__attribute__((used)) static int FUNC4(int argc, const char *argv[], char *newstr) {
	int i,j,k;
	struct {
		char *op;
		char *str;
	} ops[] = {
		{ "cmpl",  "cmp 2, 1"},
		{ "testl", "test 2, 1"},
		{ "leal",  "lea 2, 1"},
		{ "movl",  "mov 2, 1"},
		{ "xorl",  "xor 2, 1"},
		{ "andl",  "and 2, 1"},
		{ "orl",   "or 2, 1"},
		{ "addl",  "add 2, 1"},
		{ "incl",  "inc 1"},
		{ "decl",  "dec 1"},
		{ "subl",  "sub 2, 1"},
		{ "mull",  "mul 2, 1"},
		{ "divl",  "div 2, 1"},
		{ "pushl", "push 1"},
		{ "popl",  "pop 1"},
		{ "ret",  "ret"},
		{ NULL }
	};

	for (i=0; ops[i].op != NULL; i++) {
		if (!FUNC1 (ops[i].op, argv[0])) {
			if (newstr != NULL) {
				for (j=k=0;ops[i].str[j]!='\0';j++,k++) {
					if (ops[i].str[j]>='0' && ops[i].str[j]<='9') {
						const char *w = argv[ ops[i].str[j]-'0' ];
						if (w != NULL) {
							FUNC2(newstr+k, w);
							k += FUNC3(w)-1;
						}
					} else {
						newstr[k] = ops[i].str[j];
					}
				}
				newstr[k]='\0';
			}
			return true;
		}
	}

	/* TODO: this is slow */
	if (newstr != NULL) {
		newstr[0] = '\0';
		for (i=0; i<argc; i++) {
			FUNC0 (newstr, argv[i]);
			FUNC0 (newstr, (i == 0 || i== argc - 1)?" ":",");
		}
	}

	return false;
}