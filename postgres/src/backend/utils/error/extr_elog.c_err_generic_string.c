
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int constraint_name; int assoc_context; int datatype_name; int column_name; int table_name; int schema_name; } ;
typedef TYPE_1__ ErrorData ;


 int CHECK_STACK_DEPTH () ;
 int ERROR ;





 int elog (int ,char*,int) ;
 TYPE_1__* errordata ;
 size_t errordata_stack_depth ;
 int set_errdata_field (int ,int *,char const*) ;

int
err_generic_string(int field, const char *str)
{
 ErrorData *edata = &errordata[errordata_stack_depth];


 CHECK_STACK_DEPTH();

 switch (field)
 {
  case 129:
   set_errdata_field(edata->assoc_context, &edata->schema_name, str);
   break;
  case 128:
   set_errdata_field(edata->assoc_context, &edata->table_name, str);
   break;
  case 132:
   set_errdata_field(edata->assoc_context, &edata->column_name, str);
   break;
  case 130:
   set_errdata_field(edata->assoc_context, &edata->datatype_name, str);
   break;
  case 131:
   set_errdata_field(edata->assoc_context, &edata->constraint_name, str);
   break;
  default:
   elog(ERROR, "unsupported ErrorData field id: %d", field);
   break;
 }

 return 0;
}
