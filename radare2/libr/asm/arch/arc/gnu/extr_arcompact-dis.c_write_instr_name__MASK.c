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
struct arcDisState {int /*<<< orphan*/  instrBuffer; scalar_t__ nullifyMode; } ;

/* Variables and functions */
 char** condName ; 
 char* FUNC0 (struct arcDisState*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char const*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char const*,int) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static void
FUNC4(struct arcDisState *state,
		  const char *instrName,
		  int cond,
		  int condCodeIsPartOfName,
		  int flag,
		  int signExtend,
		  int addrWriteBack,
		  int directMem)
{
	if (!instrName) {
		return;
	}
	FUNC2 (state->instrBuffer, instrName, sizeof (state->instrBuffer) - 1);
	if (cond > 0) {
		int condlim = 0; /* condition code limit*/
		const char *cc = 0;
		if (!condCodeIsPartOfName) {
			FUNC1 (state->instrBuffer, ".");
		}
		condlim = 18;
		if (cond < condlim) {
			cc = condName[cond];
		} else {
			cc = FUNC0 (state, cond);
		}
		if (!cc) {
			cc = "???";
		}
		FUNC1 (state->instrBuffer, cc);
    }
    if (flag) {
	    FUNC1 (state->instrBuffer, ".f");
    }
    if (state->nullifyMode) {
	    if (FUNC3 (state->instrBuffer, ".d") == NULL) {
		    FUNC1 (state->instrBuffer, ".d");
	    }
    }
    if (signExtend) {
	    FUNC1 (state->instrBuffer, ".x");
    }
    switch (addrWriteBack) {
    case 1: FUNC1(state->instrBuffer, ".a"); break;
    case 2: FUNC1(state->instrBuffer, ".ab"); break;
    case 3: FUNC1(state->instrBuffer, ".as"); break;
  }
  if (directMem) {
	  FUNC1 (state->instrBuffer, ".di");
  }
}