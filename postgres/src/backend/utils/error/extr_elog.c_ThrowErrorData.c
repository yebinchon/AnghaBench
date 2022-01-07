
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ sqlerrcode; void* internalquery; int internalpos; int cursorpos; void* constraint_name; void* datatype_name; void* column_name; void* table_name; void* schema_name; void* backtrace; void* context; void* hint; void* detail_log; void* detail; void* message; int assoc_context; int funcname; int lineno; int filename; int elevel; } ;
typedef int MemoryContext ;
typedef TYPE_1__ ErrorData ;


 int MemoryContextSwitchTo (int ) ;
 int errfinish (int ) ;
 TYPE_1__* errordata ;
 size_t errordata_stack_depth ;
 int errstart (int ,int ,int ,int ,int *) ;
 void* pstrdup (void*) ;
 int recursion_depth ;

void
ThrowErrorData(ErrorData *edata)
{
 ErrorData *newedata;
 MemoryContext oldcontext;

 if (!errstart(edata->elevel, edata->filename, edata->lineno,
      edata->funcname, ((void*)0)))
  return;

 newedata = &errordata[errordata_stack_depth];
 recursion_depth++;
 oldcontext = MemoryContextSwitchTo(newedata->assoc_context);


 if (edata->sqlerrcode != 0)
  newedata->sqlerrcode = edata->sqlerrcode;
 if (edata->message)
  newedata->message = pstrdup(edata->message);
 if (edata->detail)
  newedata->detail = pstrdup(edata->detail);
 if (edata->detail_log)
  newedata->detail_log = pstrdup(edata->detail_log);
 if (edata->hint)
  newedata->hint = pstrdup(edata->hint);
 if (edata->context)
  newedata->context = pstrdup(edata->context);
 if (edata->backtrace)
  newedata->backtrace = pstrdup(edata->backtrace);

 if (edata->schema_name)
  newedata->schema_name = pstrdup(edata->schema_name);
 if (edata->table_name)
  newedata->table_name = pstrdup(edata->table_name);
 if (edata->column_name)
  newedata->column_name = pstrdup(edata->column_name);
 if (edata->datatype_name)
  newedata->datatype_name = pstrdup(edata->datatype_name);
 if (edata->constraint_name)
  newedata->constraint_name = pstrdup(edata->constraint_name);
 newedata->cursorpos = edata->cursorpos;
 newedata->internalpos = edata->internalpos;
 if (edata->internalquery)
  newedata->internalquery = pstrdup(edata->internalquery);

 MemoryContextSwitchTo(oldcontext);
 recursion_depth--;


 errfinish(0);
}
