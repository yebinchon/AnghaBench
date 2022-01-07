
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ assoc_context; void* internalquery; void* constraint_name; void* datatype_name; void* column_name; void* table_name; void* schema_name; void* backtrace; void* context; void* hint; void* detail_log; void* detail; void* message; } ;
typedef TYPE_1__ ErrorData ;


 int Assert (int) ;
 int CHECK_STACK_DEPTH () ;
 scalar_t__ CurrentMemoryContext ;
 scalar_t__ ErrorContext ;
 TYPE_1__* errordata ;
 size_t errordata_stack_depth ;
 int memcpy (TYPE_1__*,TYPE_1__*,int) ;
 scalar_t__ palloc (int) ;
 void* pstrdup (void*) ;

ErrorData *
CopyErrorData(void)
{
 ErrorData *edata = &errordata[errordata_stack_depth];
 ErrorData *newedata;





 CHECK_STACK_DEPTH();

 Assert(CurrentMemoryContext != ErrorContext);


 newedata = (ErrorData *) palloc(sizeof(ErrorData));
 memcpy(newedata, edata, sizeof(ErrorData));


 if (newedata->message)
  newedata->message = pstrdup(newedata->message);
 if (newedata->detail)
  newedata->detail = pstrdup(newedata->detail);
 if (newedata->detail_log)
  newedata->detail_log = pstrdup(newedata->detail_log);
 if (newedata->hint)
  newedata->hint = pstrdup(newedata->hint);
 if (newedata->context)
  newedata->context = pstrdup(newedata->context);
 if (newedata->backtrace)
  newedata->backtrace = pstrdup(newedata->backtrace);
 if (newedata->schema_name)
  newedata->schema_name = pstrdup(newedata->schema_name);
 if (newedata->table_name)
  newedata->table_name = pstrdup(newedata->table_name);
 if (newedata->column_name)
  newedata->column_name = pstrdup(newedata->column_name);
 if (newedata->datatype_name)
  newedata->datatype_name = pstrdup(newedata->datatype_name);
 if (newedata->constraint_name)
  newedata->constraint_name = pstrdup(newedata->constraint_name);
 if (newedata->internalquery)
  newedata->internalquery = pstrdup(newedata->internalquery);


 newedata->assoc_context = CurrentMemoryContext;

 return newedata;
}
