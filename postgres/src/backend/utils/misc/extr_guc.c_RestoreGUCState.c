
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int varsourceline ;
typedef int varsource ;
typedef int varscontext ;
typedef int len ;
struct TYPE_3__ {char** arg; struct TYPE_3__* previous; int callback; } ;
typedef int Size ;
typedef int GucSource ;
typedef int GucContext ;
typedef TYPE_1__ ErrorContextCallback ;


 int ERRCODE_INTERNAL_ERROR ;
 int ERROR ;
 int GUC_ACTION_SET ;
 int InitializeOneGUCOption (int ) ;
 int can_skip_gucvar (int ) ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errmsg (char*,char*) ;
 TYPE_1__* error_context_stack ;
 int guc_restore_error_context_callback ;
 int * guc_variables ;
 int memcpy (int*,void*,int) ;
 int num_guc_variables ;
 char* read_gucstate (char**,char*) ;
 int read_gucstate_binary (char**,char*,int*,int) ;
 int set_config_option (char*,char*,int,int,int ,int,int ,int) ;
 int set_config_sourcefile (char*,char*,int) ;

void
RestoreGUCState(void *gucstate)
{
 char *varname,
      *varvalue,
      *varsourcefile;
 int varsourceline;
 GucSource varsource;
 GucContext varscontext;
 char *srcptr = (char *) gucstate;
 char *srcend;
 Size len;
 int i;
 ErrorContextCallback error_context_callback;


 for (i = 0; i < num_guc_variables; i++)
  if (!can_skip_gucvar(guc_variables[i]))
   InitializeOneGUCOption(guc_variables[i]);


 memcpy(&len, gucstate, sizeof(len));

 srcptr += sizeof(len);
 srcend = srcptr + len;


 error_context_callback.callback = guc_restore_error_context_callback;
 error_context_callback.previous = error_context_stack;
 error_context_callback.arg = ((void*)0);
 error_context_stack = &error_context_callback;

 while (srcptr < srcend)
 {
  int result;
  char *error_context_name_and_value[2];

  varname = read_gucstate(&srcptr, srcend);
  varvalue = read_gucstate(&srcptr, srcend);
  varsourcefile = read_gucstate(&srcptr, srcend);
  if (varsourcefile[0])
   read_gucstate_binary(&srcptr, srcend,
         &varsourceline, sizeof(varsourceline));
  else
   varsourceline = 0;
  read_gucstate_binary(&srcptr, srcend,
        &varsource, sizeof(varsource));
  read_gucstate_binary(&srcptr, srcend,
        &varscontext, sizeof(varscontext));

  error_context_name_and_value[0] = varname;
  error_context_name_and_value[1] = varvalue;
  error_context_callback.arg = &error_context_name_and_value[0];
  result = set_config_option(varname, varvalue, varscontext, varsource,
           GUC_ACTION_SET, 1, ERROR, 1);
  if (result <= 0)
   ereport(ERROR,
     (errcode(ERRCODE_INTERNAL_ERROR),
      errmsg("parameter \"%s\" could not be set", varname)));
  if (varsourcefile[0])
   set_config_sourcefile(varname, varsourcefile, varsourceline);
  error_context_callback.arg = ((void*)0);
 }

 error_context_stack = error_context_callback.previous;
}
