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
struct arcDisState {int nullifyMode; int /*<<< orphan*/  instrBuffer; } ;

/* Variables and functions */
#define  BR_exec_always 130 
#define  BR_exec_when_jump 129 
#define  BR_exec_when_no_jump 128 
 char** condName ; 
 char* FUNC0 (struct arcDisState*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char const*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char const*,int) ; 

__attribute__((used)) static void
FUNC3(struct arcDisState * state,
		  const char * instrName,
		  int cond,
		  int condCodeIsPartOfName,
		  int flag,
		  int signExtend,
		  int addrWriteBack,
		  int directMem)
{
  FUNC2 (state->instrBuffer, instrName, sizeof (state->instrBuffer)-1);
  if (cond > 0)
    {
      const char *cc = 0;

      if (!condCodeIsPartOfName) {
	      FUNC1 (state->instrBuffer, ".");
      }
      if (cond < 16) {
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
    switch (state->nullifyMode) {
    case BR_exec_always:
      FUNC1 (state->instrBuffer, ".d");
      break;
    case BR_exec_when_jump:
      FUNC1 (state->instrBuffer, ".jd");
      break;
    case BR_exec_when_no_jump:
      break;
    }
    if (signExtend) {
	    FUNC1 (state->instrBuffer, ".x");
    }
    if (addrWriteBack) {
	    FUNC1 (state->instrBuffer, ".a");
    }
    if (directMem) {
	    FUNC1 (state->instrBuffer, ".di");
    }
}