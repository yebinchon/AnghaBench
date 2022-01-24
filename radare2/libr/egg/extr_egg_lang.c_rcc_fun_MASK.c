#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {char* dstvar; char* setenviron; char* syscallbody; char* dstval; char* includefile; void* mode; scalar_t__ ndstval; scalar_t__ slurp; int /*<<< orphan*/  callname; } ;
struct TYPE_11__ {TYPE_1__ lang; TYPE_2__* remit; } ;
struct TYPE_10__ {int /*<<< orphan*/  (* call ) (TYPE_3__*,char const*,int /*<<< orphan*/ ) ;int /*<<< orphan*/  (* comment ) (TYPE_3__*,char*,scalar_t__,int /*<<< orphan*/ ) ;} ;
typedef  TYPE_2__ REggEmit ;
typedef  TYPE_3__ REgg ;

/* Variables and functions */
 void* ALIAS ; 
 scalar_t__ CTX ; 
 void* DATA ; 
 void* GOTO ; 
 void* INCLUDE ; 
 void* INLINE ; 
 void* NAKED ; 
 void* NORMAL ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 void* SYSCALL ; 
 int /*<<< orphan*/  FUNC1 (char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (char) ; 
 void* FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_3__*,char*,char const*,...) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_3__*,char*) ; 
 char* FUNC7 (char const*) ; 
 char* FUNC8 (char const*,char) ; 
 int /*<<< orphan*/  FUNC9 (char const*,char*) ; 
 void* FUNC10 (char*) ; 
 scalar_t__ FUNC11 (char*,char*) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_3__*,char*,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_3__*,char const*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC14(REgg *egg, const char *str) {
	char *ptr, *ptr2;
	REggEmit *e = egg->remit;
	str = FUNC7 (str);
	if (CTX) {
		ptr = FUNC8 (str, '=');
		if (ptr) {
			*ptr++ = '\0';
			FUNC2 (egg->lang.dstvar);
			egg->lang.dstvar = FUNC10 (FUNC7 (str));
			ptr2 = (char *) FUNC7 (ptr);
			if (*ptr2) {
				FUNC6 (egg, FUNC7 (ptr));
			}
		} else {
			str = FUNC7 (str);
			FUNC6 (egg, FUNC7 (str));
			egg->remit->comment (egg, "rcc_fun %d (%s)",
				CTX, egg->lang.callname);
		}
	} else {
		ptr = FUNC8 (str, '@');
		if (ptr) {
			*ptr++ = '\0';
			egg->lang.mode = NORMAL;
			if (FUNC11 (ptr, "env")) {
				// eprintf ("SETENV (%s)\n", str);
				FUNC2 (egg->lang.setenviron);
				egg->lang.setenviron = FUNC10 (FUNC7 (str));
				egg->lang.slurp = 0;
			} else if (FUNC11 (ptr, "fastcall")) {
				/* TODO : not yet implemented */
			} else if (FUNC11 (ptr, "syscall")) {
				if (*str) {
					egg->lang.mode = SYSCALL;
					egg->lang.dstvar = FUNC10 (FUNC7 (str));
				} else {
					egg->lang.mode = INLINE;
					FUNC2 (egg->lang.syscallbody);
					egg->lang.syscallbody = FUNC4 (4096);	// XXX hardcoded size
					egg->lang.dstval = egg->lang.syscallbody;
					FUNC0 (egg->lang.dstvar);
					egg->lang.ndstval = 0;
					*egg->lang.syscallbody = '\0';
				}
			} else if (FUNC11 (ptr, "include")) {
				egg->lang.mode = INCLUDE;
				FUNC2 (egg->lang.includefile);
				egg->lang.includefile = FUNC10 (FUNC7 (str));
				// egg->lang.slurp = 0;
				// try to deal with alias
			} else if (FUNC11 (ptr, "alias")) {
				egg->lang.mode = ALIAS;
				ptr2 = egg->lang.dstvar = FUNC10 (FUNC7 (str));
				while (*ptr2 && !FUNC3 (*ptr2)) {
					ptr2++;
				}
				*ptr2 = '\x00';
				// for aliases must be valid and accurate strings
			} else if (FUNC11 (ptr, "data")) {
				egg->lang.mode = DATA;
				egg->lang.ndstval = 0;
				egg->lang.dstvar = FUNC10 (FUNC7 (str));
				egg->lang.dstval = FUNC4 (4096);
			} else if (FUNC11 (ptr, "naked")) {
				egg->lang.mode = NAKED;
				/*
				free (egg->lang.dstvar);
				egg->lang.dstvar = strdup (skipspaces (str));
				egg->lang.dstval = malloc (4096);
				egg->lang.ndstval = 0;
				*/
				FUNC5 (egg, "%s:\n", str);
			} else if (FUNC11 (ptr, "inline")) {
				egg->lang.mode = INLINE;
				FUNC2 (egg->lang.dstvar);
				egg->lang.dstvar = FUNC10 (FUNC7 (str));
				egg->lang.dstval = FUNC4 (4096);
				egg->lang.ndstval = 0;
			} else {
				// naked label
				if (*ptr) {
					FUNC5 (egg, "\n.%s %s\n", ptr, str);
				}
				FUNC5 (egg, "%s:\n", str);
			}
		} else {
			// e->jmp (egg, egg->lang.ctxpush[context], 0);
			if (CTX > 0) {
				// WTF?
				FUNC1 ("LABEL %d\n", CTX);
				FUNC5 (egg, "\n%s:\n", str);
			} else {
				if (!FUNC9 (str, "goto")) {
					egg->lang.mode = GOTO;
				} else {
					// call() // or maybe jmp?
					e->call (egg, str, 0);
				}
			}
		}
	}
}