
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int PyObject ;
typedef int PLyDatumToOb ;
typedef int Datum ;


 char* DatumGetCString (int ) ;
 int DirectFunctionCall1 (int ,int ) ;
 int ERROR ;
 int PLy_elog (int ,char*) ;
 int PyErr_Clear () ;
 int * PyImport_ImportModule (char*) ;
 int * PyObject_CallFunction (int *,char*,char*) ;
 int * PyObject_GetAttrString (int *,char*) ;
 int numeric_out ;

__attribute__((used)) static PyObject *
PLyDecimal_FromNumeric(PLyDatumToOb *arg, Datum d)
{
 static PyObject *decimal_constructor;
 char *str;
 PyObject *pyvalue;


 if (!decimal_constructor)
 {
  PyObject *decimal_module;

  decimal_module = PyImport_ImportModule("cdecimal");
  if (!decimal_module)
  {
   PyErr_Clear();
   decimal_module = PyImport_ImportModule("decimal");
  }
  if (!decimal_module)
   PLy_elog(ERROR, "could not import a module for Decimal constructor");

  decimal_constructor = PyObject_GetAttrString(decimal_module, "Decimal");
  if (!decimal_constructor)
   PLy_elog(ERROR, "no Decimal attribute in module");
 }

 str = DatumGetCString(DirectFunctionCall1(numeric_out, d));
 pyvalue = PyObject_CallFunction(decimal_constructor, "s", str);
 if (!pyvalue)
  PLy_elog(ERROR, "conversion from numeric to Decimal failed");

 return pyvalue;
}
