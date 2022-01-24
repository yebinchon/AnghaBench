#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int inlinectr; char* dstvar; char* dstval; char* syscallbody; size_t ndstval; size_t ninlines; TYPE_1__* inlines; int /*<<< orphan*/  mode; scalar_t__ slurp; } ;
struct TYPE_8__ {TYPE_2__ lang; } ;
struct TYPE_6__ {void* body; void* name; } ;
typedef  TYPE_3__ REgg ;

/* Variables and functions */
 int CTX ; 
 int /*<<< orphan*/  NORMAL ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*,int) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 void* FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(REgg *egg, char c) {
	/* skip until '{' */
	if (c == '{') {	/* XXX: repeated code!! */
		FUNC2 (egg, 1);
		egg->lang.inlinectr++;
		if (egg->lang.inlinectr == 1) {
			return 0;
		}
	} else if (egg->lang.inlinectr == 0) {
		return 0;
	}

	/* capture body */
	if (c == '}') {	/* XXX: repeated code!! */
		if (CTX < 2) {
			FUNC2 (egg, -1);
			egg->lang.slurp = 0;
			egg->lang.mode = NORMAL;
			egg->lang.inlinectr = 0;
			if (!egg->lang.dstvar && egg->lang.dstval == egg->lang.syscallbody) {
				egg->lang.dstval = NULL;
				return 1;
			} else	/* register */
			if (egg->lang.dstval && egg->lang.dstvar) {
				egg->lang.dstval[egg->lang.ndstval] = '\0';
				// printf(" /* END OF INLINE (%s)(%s) */\n", egg->lang.dstvar, egg->lang.dstval);
				egg->lang.inlines[egg->lang.ninlines].name = FUNC4 (FUNC3 (egg->lang.dstvar));
				egg->lang.inlines[egg->lang.ninlines].body = FUNC4 (FUNC3 (egg->lang.dstval));
				egg->lang.ninlines++;
				FUNC0 (egg->lang.dstvar);
				FUNC0 (egg->lang.dstval);
				return 1;
			}
			FUNC1 ("Parse error\n");
		}
	}
	if (egg->lang.dstval) {
		egg->lang.dstval[egg->lang.ndstval++] = c;
		egg->lang.dstval[egg->lang.ndstval] = 0;
	}
	return 0;
}