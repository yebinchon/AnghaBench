
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int vars; } ;


 int CreateVariableSpace () ;
 int SetVariableHooks (int ,char*,int *,int ) ;
 int autocommit_hook ;
 int * bool_substitute_hook ;
 int comp_keyword_case_hook ;
 int * comp_keyword_case_substitute_hook ;
 int echo_hidden_hook ;
 int echo_hook ;
 int * echo_substitute_hook ;
 int fetch_count_hook ;
 int * fetch_count_substitute_hook ;
 int hide_tableam_hook ;
 int histcontrol_hook ;
 int * histcontrol_substitute_hook ;
 int histfile_hook ;
 int histsize_hook ;
 int * histsize_substitute_hook ;
 int ignoreeof_hook ;
 int * ignoreeof_substitute_hook ;
 int on_error_rollback_hook ;
 int on_error_stop_hook ;
 int prompt1_hook ;
 int prompt2_hook ;
 int prompt3_hook ;
 TYPE_1__ pset ;
 int quiet_hook ;
 int show_context_hook ;
 int * show_context_substitute_hook ;
 int singleline_hook ;
 int singlestep_hook ;
 int verbosity_hook ;
 int * verbosity_substitute_hook ;

__attribute__((used)) static void
EstablishVariableSpace(void)
{
 pset.vars = CreateVariableSpace();

 SetVariableHooks(pset.vars, "AUTOCOMMIT",
      bool_substitute_hook,
      autocommit_hook);
 SetVariableHooks(pset.vars, "ON_ERROR_STOP",
      bool_substitute_hook,
      on_error_stop_hook);
 SetVariableHooks(pset.vars, "QUIET",
      bool_substitute_hook,
      quiet_hook);
 SetVariableHooks(pset.vars, "SINGLELINE",
      bool_substitute_hook,
      singleline_hook);
 SetVariableHooks(pset.vars, "SINGLESTEP",
      bool_substitute_hook,
      singlestep_hook);
 SetVariableHooks(pset.vars, "FETCH_COUNT",
      fetch_count_substitute_hook,
      fetch_count_hook);
 SetVariableHooks(pset.vars, "HISTFILE",
      ((void*)0),
      histfile_hook);
 SetVariableHooks(pset.vars, "HISTSIZE",
      histsize_substitute_hook,
      histsize_hook);
 SetVariableHooks(pset.vars, "IGNOREEOF",
      ignoreeof_substitute_hook,
      ignoreeof_hook);
 SetVariableHooks(pset.vars, "ECHO",
      echo_substitute_hook,
      echo_hook);
 SetVariableHooks(pset.vars, "ECHO_HIDDEN",
      bool_substitute_hook,
      echo_hidden_hook);
 SetVariableHooks(pset.vars, "ON_ERROR_ROLLBACK",
      bool_substitute_hook,
      on_error_rollback_hook);
 SetVariableHooks(pset.vars, "COMP_KEYWORD_CASE",
      comp_keyword_case_substitute_hook,
      comp_keyword_case_hook);
 SetVariableHooks(pset.vars, "HISTCONTROL",
      histcontrol_substitute_hook,
      histcontrol_hook);
 SetVariableHooks(pset.vars, "PROMPT1",
      ((void*)0),
      prompt1_hook);
 SetVariableHooks(pset.vars, "PROMPT2",
      ((void*)0),
      prompt2_hook);
 SetVariableHooks(pset.vars, "PROMPT3",
      ((void*)0),
      prompt3_hook);
 SetVariableHooks(pset.vars, "VERBOSITY",
      verbosity_substitute_hook,
      verbosity_hook);
 SetVariableHooks(pset.vars, "SHOW_CONTEXT",
      show_context_substitute_hook,
      show_context_hook);
 SetVariableHooks(pset.vars, "HIDE_TABLEAM",
      bool_substitute_hook,
      hide_tableam_hook);
}
