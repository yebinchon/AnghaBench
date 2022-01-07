
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {struct TYPE_4__* internalquery; struct TYPE_4__* constraint_name; struct TYPE_4__* datatype_name; struct TYPE_4__* column_name; struct TYPE_4__* table_name; struct TYPE_4__* schema_name; struct TYPE_4__* backtrace; struct TYPE_4__* context; struct TYPE_4__* hint; struct TYPE_4__* detail_log; struct TYPE_4__* detail; struct TYPE_4__* message; } ;
typedef TYPE_1__ ErrorData ;


 int pfree (TYPE_1__*) ;

void
FreeErrorData(ErrorData *edata)
{
 if (edata->message)
  pfree(edata->message);
 if (edata->detail)
  pfree(edata->detail);
 if (edata->detail_log)
  pfree(edata->detail_log);
 if (edata->hint)
  pfree(edata->hint);
 if (edata->context)
  pfree(edata->context);
 if (edata->backtrace)
  pfree(edata->backtrace);
 if (edata->schema_name)
  pfree(edata->schema_name);
 if (edata->table_name)
  pfree(edata->table_name);
 if (edata->column_name)
  pfree(edata->column_name);
 if (edata->datatype_name)
  pfree(edata->datatype_name);
 if (edata->constraint_name)
  pfree(edata->constraint_name);
 if (edata->internalquery)
  pfree(edata->internalquery);
 pfree(edata);
}
