#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {int children_num; char* tag; char* contents; struct TYPE_8__** children; } ;
typedef  TYPE_1__ mpc_ast_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,char const*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 scalar_t__ FUNC2 (TYPE_1__*) ; 
 scalar_t__ FUNC3 (TYPE_1__*) ; 
 scalar_t__ FUNC4 (TYPE_1__*) ; 
 scalar_t__ FUNC5 (TYPE_1__*) ; 
 scalar_t__ FUNC6 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC7 (char*,...) ; 
 char* FUNC8 (char*,char) ; 
 scalar_t__ FUNC9 (char const*,char*) ; 
 char* FUNC10 (char*) ; 
 int FUNC11 (char*) ; 

__attribute__((used)) static void FUNC12 (mpc_ast_t *node) {
	if (FUNC6(node)) {
		int i, narg = 0;
		const char *args[32];
		for (i=0 ; i<node->children_num; i++) {
			const char *tag = node->children[i]->tag;
			const char *val = node->children[i]->contents;
			if (FUNC9 (tag, "char")) {
				FUNC7 ("TAG (%s) = (%s)\n", tag, val);
				args[narg++] = val;
			}
		}
		FUNC7 ("; CALL WITH %d ARGS\n", narg);
	} else if (FUNC4 (node)) {
		int i, j;
		const char *name = node->children[0]->contents;
		FUNC7 ("%s:\n", name);
		for (i=0 ; i<node->children_num; i++) {
			if (!FUNC9 (node->children[i]->tag, "body|>")) {
				node = node->children[i];
				for (i=0 ; i<node->children_num; i++) {
					if (!FUNC9 (node->children[i]->tag, "stmt|>")) {
						FUNC12 (node->children[i]);
					} else {
						FUNC0 ("UNK %s\n", node->children[i]->tag);
					}
				}
				break;
			}
		}
	} else if (FUNC5 (node)) {
		if (node->children_num>4) {
			const char *name = node->children[0]->contents;
			const char *type = node->children[2]->contents;
			const char *size = node->children[4]->contents;
			if (!FUNC9 (type, "alias")) {
				FUNC7 (".equ %s,%s\n", name, size);
			} else if (!FUNC9 (type, "syscall")) {
				FUNC7 ("; TODO: register syscall %s number %s\n", name, size);
			} else if (!FUNC9 (type, "global")) {
				FUNC7 ("; TODO: global \n");
			} else {
				FUNC7 ("; UNKNOWN EXPRESISON: NAME = '%s' ", name);
				FUNC7 ("TYPE = '%s' ", type);
				FUNC7 ("SIZE = '%s'\n", size);
			}
		}
	} else if (FUNC2 (node)) {
		char *s = FUNC10 (node->contents + 2);
		int len = FUNC11 (s);
		if (node->contents[1] == '*') {
			s[len-2] = 0;
		}
		while (s) {
			char *nl = FUNC8 (s, '\n');
			if (nl) {
				*nl = 0;
				FUNC7 ("; %s\n", s);
				s = nl + 1;
			} else {
				FUNC7 ("; %s\n", s);
				s = NULL;
			}
		}
		FUNC1 (s);
	} else if (FUNC3 (node)) {
		FUNC7 ("%s\n", node->contents+1);
	}
}