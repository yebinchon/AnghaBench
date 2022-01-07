
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int constraint_name; int datatype_name; int column_name; int table_name; int schema_name; int internalquery; int hint; int detail; int sqlerrcode; int message; } ;
typedef int PyObject ;
typedef TYPE_1__ ErrorData ;


 int ERROR ;
 int PyErr_SetObject (int *,int *) ;
 int * PyObject_CallObject (int *,int *) ;
 int * Py_BuildValue (char*,int ) ;
 int Py_DECREF (int *) ;
 int Py_XDECREF (int *) ;
 int elog (int ,char*) ;
 int set_string_attr (int *,char*,int ) ;
 int unpack_sql_state (int ) ;

void
PLy_exception_set_with_details(PyObject *excclass, ErrorData *edata)
{
 PyObject *args = ((void*)0);
 PyObject *error = ((void*)0);

 args = Py_BuildValue("(s)", edata->message);
 if (!args)
  goto failure;


 error = PyObject_CallObject(excclass, args);
 if (!error)
  goto failure;

 if (!set_string_attr(error, "sqlstate",
       unpack_sql_state(edata->sqlerrcode)))
  goto failure;

 if (!set_string_attr(error, "detail", edata->detail))
  goto failure;

 if (!set_string_attr(error, "hint", edata->hint))
  goto failure;

 if (!set_string_attr(error, "query", edata->internalquery))
  goto failure;

 if (!set_string_attr(error, "schema_name", edata->schema_name))
  goto failure;

 if (!set_string_attr(error, "table_name", edata->table_name))
  goto failure;

 if (!set_string_attr(error, "column_name", edata->column_name))
  goto failure;

 if (!set_string_attr(error, "datatype_name", edata->datatype_name))
  goto failure;

 if (!set_string_attr(error, "constraint_name", edata->constraint_name))
  goto failure;

 PyErr_SetObject(excclass, error);

 Py_DECREF(args);
 Py_DECREF(error);

 return;

failure:
 Py_XDECREF(args);
 Py_XDECREF(error);

 elog(ERROR, "could not convert error to Python exception");
}
