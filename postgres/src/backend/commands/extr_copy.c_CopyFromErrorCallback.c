
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int curlineno_str ;
struct TYPE_3__ {scalar_t__ data; } ;
struct TYPE_4__ {int cur_relname; TYPE_1__ line_buf; int need_transcoding; scalar_t__ line_buf_converted; scalar_t__ line_buf_valid; scalar_t__ cur_attname; scalar_t__ cur_attval; scalar_t__ binary; int cur_lineno; } ;
typedef TYPE_2__* CopyState ;


 char* UINT64_FORMAT ;
 int errcontext (char*,int ,char*,...) ;
 char* limit_printout_length (scalar_t__) ;
 int pfree (char*) ;
 int snprintf (char*,int,char*,int ) ;

void
CopyFromErrorCallback(void *arg)
{
 CopyState cstate = (CopyState) arg;
 char curlineno_str[32];

 snprintf(curlineno_str, sizeof(curlineno_str), UINT64_FORMAT,
    cstate->cur_lineno);

 if (cstate->binary)
 {

  if (cstate->cur_attname)
   errcontext("COPY %s, line %s, column %s",
        cstate->cur_relname, curlineno_str,
        cstate->cur_attname);
  else
   errcontext("COPY %s, line %s",
        cstate->cur_relname, curlineno_str);
 }
 else
 {
  if (cstate->cur_attname && cstate->cur_attval)
  {

   char *attval;

   attval = limit_printout_length(cstate->cur_attval);
   errcontext("COPY %s, line %s, column %s: \"%s\"",
        cstate->cur_relname, curlineno_str,
        cstate->cur_attname, attval);
   pfree(attval);
  }
  else if (cstate->cur_attname)
  {

   errcontext("COPY %s, line %s, column %s: null input",
        cstate->cur_relname, curlineno_str,
        cstate->cur_attname);
  }
  else
  {
   if (cstate->line_buf_valid &&
    (cstate->line_buf_converted || !cstate->need_transcoding))
   {
    char *lineval;

    lineval = limit_printout_length(cstate->line_buf.data);
    errcontext("COPY %s, line %s: \"%s\"",
         cstate->cur_relname, curlineno_str, lineval);
    pfree(lineval);
   }
   else
   {
    errcontext("COPY %s, line %s",
         cstate->cur_relname, curlineno_str);
   }
  }
 }
}
