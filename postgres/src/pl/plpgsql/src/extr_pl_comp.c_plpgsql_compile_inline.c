
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef int int32 ;
struct TYPE_12__ {char* arg; struct TYPE_12__* previous; int callback; } ;
struct TYPE_11__ {int out_param_varno; scalar_t__ fn_rettype; int fn_retset; int fn_retistuple; int fn_retisdomain; int fn_retbyval; int fn_rettyplen; int fn_readonly; scalar_t__ fn_nargs; int action; int found_varno; int fn_prokind; scalar_t__ nstatements; scalar_t__ extra_errors; scalar_t__ extra_warnings; int print_strict_params; int resolve_option; int * fn_cxt; int fn_input_collation; int fn_is_trigger; int fn_signature; } ;
struct TYPE_10__ {int dno; } ;
typedef TYPE_1__ PLpgSQL_variable ;
typedef TYPE_2__ PLpgSQL_function ;
typedef int * MemoryContext ;
typedef TYPE_3__ ErrorContextCallback ;


 int ALLOCSET_DEFAULT_SIZES ;
 int * AllocSetContextCreate (int ,char*,int ) ;
 int BOOLOID ;
 int CurrentMemoryContext ;
 int ERROR ;
 int InvalidOid ;
 int * MemoryContextSwitchTo (int *) ;
 int PLPGSQL_LABEL_BLOCK ;
 int PLPGSQL_NOT_TRIGGER ;
 int PROKIND_FUNCTION ;
 scalar_t__ VOIDOID ;
 int add_dummy_return (TYPE_2__*) ;
 int check_function_bodies ;
 int elog (int ,char*,int) ;
 TYPE_3__* error_context_stack ;
 scalar_t__ palloc0 (int) ;
 int plpgsql_DumpExecTree ;
 int plpgsql_build_datatype (int ,int,int ,int *) ;
 TYPE_1__* plpgsql_build_variable (char*,int ,int ,int) ;
 int plpgsql_check_syntax ;
 int plpgsql_compile_error_callback ;
 int * plpgsql_compile_tmp_cxt ;
 TYPE_2__* plpgsql_curr_compile ;
 char* plpgsql_error_funcname ;
 int plpgsql_finish_datums (TYPE_2__*) ;
 int plpgsql_ns_init () ;
 int plpgsql_ns_push (char*,int ) ;
 int plpgsql_parse_result ;
 int plpgsql_print_strict_params ;
 int plpgsql_scanner_finish () ;
 int plpgsql_scanner_init (char*) ;
 int plpgsql_start_datums () ;
 int plpgsql_variable_conflict ;
 int plpgsql_yyparse () ;
 int pstrdup (char*) ;

PLpgSQL_function *
plpgsql_compile_inline(char *proc_source)
{
 char *func_name = "inline_code_block";
 PLpgSQL_function *function;
 ErrorContextCallback plerrcontext;
 PLpgSQL_variable *var;
 int parse_rc;
 MemoryContext func_cxt;






 plpgsql_scanner_init(proc_source);

 plpgsql_error_funcname = func_name;




 plerrcontext.callback = plpgsql_compile_error_callback;
 plerrcontext.arg = proc_source;
 plerrcontext.previous = error_context_stack;
 error_context_stack = &plerrcontext;


 plpgsql_check_syntax = check_function_bodies;


 function = (PLpgSQL_function *) palloc0(sizeof(PLpgSQL_function));

 plpgsql_curr_compile = function;





 func_cxt = AllocSetContextCreate(CurrentMemoryContext,
          "PL/pgSQL inline code context",
          ALLOCSET_DEFAULT_SIZES);
 plpgsql_compile_tmp_cxt = MemoryContextSwitchTo(func_cxt);

 function->fn_signature = pstrdup(func_name);
 function->fn_is_trigger = PLPGSQL_NOT_TRIGGER;
 function->fn_input_collation = InvalidOid;
 function->fn_cxt = func_cxt;
 function->out_param_varno = -1;
 function->resolve_option = plpgsql_variable_conflict;
 function->print_strict_params = plpgsql_print_strict_params;





 function->extra_warnings = 0;
 function->extra_errors = 0;

 function->nstatements = 0;

 plpgsql_ns_init();
 plpgsql_ns_push(func_name, PLPGSQL_LABEL_BLOCK);
 plpgsql_DumpExecTree = 0;
 plpgsql_start_datums();


 function->fn_rettype = VOIDOID;
 function->fn_retset = 0;
 function->fn_retistuple = 0;
 function->fn_retisdomain = 0;
 function->fn_prokind = PROKIND_FUNCTION;

 function->fn_retbyval = 1;
 function->fn_rettyplen = sizeof(int32);





 function->fn_readonly = 0;




 var = plpgsql_build_variable("found", 0,
         plpgsql_build_datatype(BOOLOID,
              -1,
              InvalidOid,
              ((void*)0)),
         1);
 function->found_varno = var->dno;




 parse_rc = plpgsql_yyparse();
 if (parse_rc != 0)
  elog(ERROR, "plpgsql parser returned %d", parse_rc);
 function->action = plpgsql_parse_result;

 plpgsql_scanner_finish();





 if (function->fn_rettype == VOIDOID)
  add_dummy_return(function);




 function->fn_nargs = 0;

 plpgsql_finish_datums(function);




 error_context_stack = plerrcontext.previous;
 plpgsql_error_funcname = ((void*)0);

 plpgsql_check_syntax = 0;

 MemoryContextSwitchTo(plpgsql_compile_tmp_cxt);
 plpgsql_compile_tmp_cxt = ((void*)0);
 return function;
}
