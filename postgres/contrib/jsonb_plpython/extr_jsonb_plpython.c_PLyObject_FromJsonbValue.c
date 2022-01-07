
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int data; } ;
struct TYPE_7__ {int boolean; int numeric; TYPE_1__ binary; } ;
struct TYPE_8__ {int type; TYPE_2__ val; } ;
typedef int PyObject ;
typedef TYPE_3__ JsonbValue ;
typedef int Datum ;


 char* DatumGetCString (int ) ;
 int DirectFunctionCall1 (int ,int ) ;
 int ERROR ;
 int NumericGetDatum (int ) ;
 int * PLyObject_FromJsonbContainer (int ) ;
 int * PLyString_FromJsonbValue (TYPE_3__*) ;
 int * PyObject_CallFunction (int ,char*,char*) ;
 int Py_RETURN_FALSE ;
 int Py_RETURN_NONE ;
 int Py_RETURN_TRUE ;
 int decimal_constructor ;
 int elog (int ,char*,int) ;





 int numeric_out ;

__attribute__((used)) static PyObject *
PLyObject_FromJsonbValue(JsonbValue *jsonbValue)
{
 switch (jsonbValue->type)
 {
  case 130:
   Py_RETURN_NONE;

  case 132:
   return PLyObject_FromJsonbContainer(jsonbValue->val.binary.data);

  case 129:
   {
    Datum num;
    char *str;

    num = NumericGetDatum(jsonbValue->val.numeric);
    str = DatumGetCString(DirectFunctionCall1(numeric_out, num));

    return PyObject_CallFunction(decimal_constructor, "s", str);
   }

  case 128:
   return PLyString_FromJsonbValue(jsonbValue);

  case 131:
   if (jsonbValue->val.boolean)
    Py_RETURN_TRUE;
   else
    Py_RETURN_FALSE;

  default:
   elog(ERROR, "unexpected jsonb value type: %d", jsonbValue->type);
   return ((void*)0);
 }
}
