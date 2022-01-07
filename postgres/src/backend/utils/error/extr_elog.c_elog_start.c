
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {char const* filename; int lineno; char const* funcname; int * assoc_context; int saved_errno; } ;
typedef TYPE_1__ ErrorData ;


 scalar_t__ ERRORDATA_STACK_SIZE ;
 int * ErrorContext ;
 int PANIC ;
 int ereport (int ,int ) ;
 int errmsg_internal (char*) ;
 int errno ;
 TYPE_1__* errordata ;
 scalar_t__ errordata_stack_depth ;
 int exit (int) ;
 char* strrchr (char const*,char) ;
 int write_stderr (char*,char const*,int) ;

void
elog_start(const char *filename, int lineno, const char *funcname)
{
 ErrorData *edata;


 if (ErrorContext == ((void*)0))
 {

  write_stderr("error occurred at %s:%d before error message processing is available\n",
      filename ? filename : "(unknown file)", lineno);
  exit(2);
 }

 if (++errordata_stack_depth >= ERRORDATA_STACK_SIZE)
 {







  errordata_stack_depth = -1;
  ereport(PANIC, (errmsg_internal("ERRORDATA_STACK_SIZE exceeded")));
 }

 edata = &errordata[errordata_stack_depth];
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

 edata->saved_errno = errno;


 edata->assoc_context = ErrorContext;
}
