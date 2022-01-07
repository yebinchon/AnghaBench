
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int PyObject ;
typedef int PLyDatumToOb ;
typedef int Datum ;


 scalar_t__ DatumGetBool (int ) ;
 int Py_RETURN_FALSE ;
 int Py_RETURN_TRUE ;

__attribute__((used)) static PyObject *
PLyBool_FromBool(PLyDatumToOb *arg, Datum d)
{
 if (DatumGetBool(d))
  Py_RETURN_TRUE;
 Py_RETURN_FALSE;
}
