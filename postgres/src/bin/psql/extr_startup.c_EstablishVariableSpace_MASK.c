#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int /*<<< orphan*/  vars; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  autocommit_hook ; 
 int /*<<< orphan*/ * bool_substitute_hook ; 
 int /*<<< orphan*/  comp_keyword_case_hook ; 
 int /*<<< orphan*/ * comp_keyword_case_substitute_hook ; 
 int /*<<< orphan*/  echo_hidden_hook ; 
 int /*<<< orphan*/  echo_hook ; 
 int /*<<< orphan*/ * echo_substitute_hook ; 
 int /*<<< orphan*/  fetch_count_hook ; 
 int /*<<< orphan*/ * fetch_count_substitute_hook ; 
 int /*<<< orphan*/  hide_tableam_hook ; 
 int /*<<< orphan*/  histcontrol_hook ; 
 int /*<<< orphan*/ * histcontrol_substitute_hook ; 
 int /*<<< orphan*/  histfile_hook ; 
 int /*<<< orphan*/  histsize_hook ; 
 int /*<<< orphan*/ * histsize_substitute_hook ; 
 int /*<<< orphan*/  ignoreeof_hook ; 
 int /*<<< orphan*/ * ignoreeof_substitute_hook ; 
 int /*<<< orphan*/  on_error_rollback_hook ; 
 int /*<<< orphan*/  on_error_stop_hook ; 
 int /*<<< orphan*/  prompt1_hook ; 
 int /*<<< orphan*/  prompt2_hook ; 
 int /*<<< orphan*/  prompt3_hook ; 
 TYPE_1__ pset ; 
 int /*<<< orphan*/  quiet_hook ; 
 int /*<<< orphan*/  show_context_hook ; 
 int /*<<< orphan*/ * show_context_substitute_hook ; 
 int /*<<< orphan*/  singleline_hook ; 
 int /*<<< orphan*/  singlestep_hook ; 
 int /*<<< orphan*/  verbosity_hook ; 
 int /*<<< orphan*/ * verbosity_substitute_hook ; 

__attribute__((used)) static void
FUNC2(void)
{
	pset.vars = FUNC0();

	FUNC1(pset.vars, "AUTOCOMMIT",
					 bool_substitute_hook,
					 autocommit_hook);
	FUNC1(pset.vars, "ON_ERROR_STOP",
					 bool_substitute_hook,
					 on_error_stop_hook);
	FUNC1(pset.vars, "QUIET",
					 bool_substitute_hook,
					 quiet_hook);
	FUNC1(pset.vars, "SINGLELINE",
					 bool_substitute_hook,
					 singleline_hook);
	FUNC1(pset.vars, "SINGLESTEP",
					 bool_substitute_hook,
					 singlestep_hook);
	FUNC1(pset.vars, "FETCH_COUNT",
					 fetch_count_substitute_hook,
					 fetch_count_hook);
	FUNC1(pset.vars, "HISTFILE",
					 NULL,
					 histfile_hook);
	FUNC1(pset.vars, "HISTSIZE",
					 histsize_substitute_hook,
					 histsize_hook);
	FUNC1(pset.vars, "IGNOREEOF",
					 ignoreeof_substitute_hook,
					 ignoreeof_hook);
	FUNC1(pset.vars, "ECHO",
					 echo_substitute_hook,
					 echo_hook);
	FUNC1(pset.vars, "ECHO_HIDDEN",
					 bool_substitute_hook,
					 echo_hidden_hook);
	FUNC1(pset.vars, "ON_ERROR_ROLLBACK",
					 bool_substitute_hook,
					 on_error_rollback_hook);
	FUNC1(pset.vars, "COMP_KEYWORD_CASE",
					 comp_keyword_case_substitute_hook,
					 comp_keyword_case_hook);
	FUNC1(pset.vars, "HISTCONTROL",
					 histcontrol_substitute_hook,
					 histcontrol_hook);
	FUNC1(pset.vars, "PROMPT1",
					 NULL,
					 prompt1_hook);
	FUNC1(pset.vars, "PROMPT2",
					 NULL,
					 prompt2_hook);
	FUNC1(pset.vars, "PROMPT3",
					 NULL,
					 prompt3_hook);
	FUNC1(pset.vars, "VERBOSITY",
					 verbosity_substitute_hook,
					 verbosity_hook);
	FUNC1(pset.vars, "SHOW_CONTEXT",
					 show_context_substitute_hook,
					 show_context_hook);
	FUNC1(pset.vars, "HIDE_TABLEAM",
					 bool_substitute_hook,
					 hide_tableam_hook);
}