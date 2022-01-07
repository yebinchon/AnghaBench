
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int PyObject ;
typedef int PLyDatumToOb ;
typedef int Datum ;


 int DatumGetInt64 (int ) ;
 int * PyLong_FromLongLong (int ) ;

__attribute__((used)) static PyObject *
PLyLong_FromInt64(PLyDatumToOb *arg, Datum d)
{
 return PyLong_FromLongLong(DatumGetInt64(d));
}
