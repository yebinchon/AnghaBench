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
typedef  int /*<<< orphan*/  mrb_debug_bptype ;

/* Variables and functions */
 int /*<<< orphan*/  BREAK_ERR_MSG_BLANK ; 
 char* BREAK_ERR_MSG_INVALIDSTR ; 
 int /*<<< orphan*/  BREAK_ERR_MSG_RANGEOVER ; 
 scalar_t__ FUNC0 (char) ; 
 scalar_t__ FUNC1 (char) ; 
 int /*<<< orphan*/  FUNC2 (char) ; 
 scalar_t__ LINENO_MAX_DIGIT ; 
 int /*<<< orphan*/  MRB_DEBUG_BPTYPE_LINE ; 
 int /*<<< orphan*/  MRB_DEBUG_BPTYPE_METHOD ; 
 int /*<<< orphan*/  MRB_DEBUG_BPTYPE_NONE ; 
 int /*<<< orphan*/  FUNC3 (char*,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (char*) ; 

mrb_debug_bptype
FUNC6(char* args)
{
  char* ps = args;

  if (FUNC0(*ps)||FUNC1(*ps)) {
    FUNC4(BREAK_ERR_MSG_BLANK);
    return MRB_DEBUG_BPTYPE_NONE;
  }

  if (!FUNC2(*ps)) {
    return MRB_DEBUG_BPTYPE_METHOD;
  }

  while (!(FUNC0(*ps)||FUNC1(*ps))) {
    if (!FUNC2(*ps)) {
      FUNC3(BREAK_ERR_MSG_INVALIDSTR, args);
      return MRB_DEBUG_BPTYPE_NONE;
    }
    ps++;
  }

  if ((*args == '0')||(FUNC5(args) >= LINENO_MAX_DIGIT)) {
    FUNC4(BREAK_ERR_MSG_RANGEOVER);
    return MRB_DEBUG_BPTYPE_NONE;
  }

  return MRB_DEBUG_BPTYPE_LINE;
}