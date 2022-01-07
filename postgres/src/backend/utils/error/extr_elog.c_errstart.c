
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int elevel; int output_to_server; int output_to_client; char const* filename; int lineno; char const* funcname; char const* domain; char const* context_domain; int * assoc_context; int saved_errno; int sqlerrcode; } ;
typedef TYPE_1__ ErrorData ;


 scalar_t__ ClientAuthInProgress ;
 scalar_t__ CritSectionCount ;
 scalar_t__ DestRemote ;
 int ERRCODE_INTERNAL_ERROR ;
 int ERRCODE_SUCCESSFUL_COMPLETION ;
 int ERRCODE_WARNING ;
 int ERROR ;
 int ERRORDATA_STACK_SIZE ;
 int * ErrorContext ;
 scalar_t__ ExitOnAnyError ;
 int FATAL ;
 int INFO ;
 int LOG_SERVER_ONLY ;
 int Max (int,int) ;
 int MemSet (TYPE_1__*,int ,int) ;
 int MemoryContextReset (int *) ;
 int PANIC ;
 char const* PG_TEXTDOMAIN (char*) ;
 int * PG_exception_stack ;
 int WARNING ;
 int client_min_messages ;
 int * debug_query_string ;
 int ereport (int,int ) ;
 int errmsg_internal (char*) ;
 int errno ;
 int * error_context_stack ;
 TYPE_1__* errordata ;
 int errordata_stack_depth ;
 int exit (int) ;
 scalar_t__ in_error_recursion_trouble () ;
 int is_log_level_output (int,int ) ;
 int log_min_messages ;
 scalar_t__ proc_exit_inprogress ;
 int recursion_depth ;
 char* strrchr (char const*,char) ;
 scalar_t__ whereToSendOutput ;
 int write_stderr (char*,char const*,int) ;

bool
errstart(int elevel, const char *filename, int lineno,
   const char *funcname, const char *domain)
{
 ErrorData *edata;
 bool output_to_server;
 bool output_to_client = 0;
 int i;





 if (elevel >= ERROR)
 {




  if (CritSectionCount > 0)
   elevel = PANIC;
  if (elevel == ERROR)
  {
   if (PG_exception_stack == ((void*)0) ||
    ExitOnAnyError ||
    proc_exit_inprogress)
    elevel = FATAL;
  }
  for (i = 0; i <= errordata_stack_depth; i++)
   elevel = Max(elevel, errordata[i].elevel);
 }
 output_to_server = is_log_level_output(elevel, log_min_messages);


 if (whereToSendOutput == DestRemote && elevel != LOG_SERVER_ONLY)
 {






  if (ClientAuthInProgress)
   output_to_client = (elevel >= ERROR);
  else
   output_to_client = (elevel >= client_min_messages ||
        elevel == INFO);
 }


 if (elevel < ERROR && !output_to_server && !output_to_client)
  return 0;





 if (ErrorContext == ((void*)0))
 {

  write_stderr("error occurred at %s:%d before error message processing is available\n",
      filename ? filename : "(unknown file)", lineno);
  exit(2);
 }





 if (recursion_depth++ > 0 && elevel >= ERROR)
 {





  MemoryContextReset(ErrorContext);







  if (in_error_recursion_trouble())
  {
   error_context_stack = ((void*)0);
   debug_query_string = ((void*)0);
  }
 }
 if (++errordata_stack_depth >= ERRORDATA_STACK_SIZE)
 {





  errordata_stack_depth = -1;
  ereport(PANIC, (errmsg_internal("ERRORDATA_STACK_SIZE exceeded")));
 }


 edata = &errordata[errordata_stack_depth];
 MemSet(edata, 0, sizeof(ErrorData));
 edata->elevel = elevel;
 edata->output_to_server = output_to_server;
 edata->output_to_client = output_to_client;
 if (filename)
 {
  const char *slash;


  slash = strrchr(filename, '/');
  if (slash)
   filename = slash + 1;
 }
 edata->filename = filename;
 edata->lineno = lineno;
 edata->funcname = funcname;

 edata->domain = domain ? domain : PG_TEXTDOMAIN("postgres");

 edata->context_domain = edata->domain;

 if (elevel >= ERROR)
  edata->sqlerrcode = ERRCODE_INTERNAL_ERROR;
 else if (elevel == WARNING)
  edata->sqlerrcode = ERRCODE_WARNING;
 else
  edata->sqlerrcode = ERRCODE_SUCCESSFUL_COMPLETION;

 edata->saved_errno = errno;




 edata->assoc_context = ErrorContext;

 recursion_depth--;
 return 1;
}
