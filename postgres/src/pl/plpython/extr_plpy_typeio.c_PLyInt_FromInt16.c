
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int PyObject ;
typedef int PLyDatumToOb ;
typedef int Datum ;


 int DatumGetInt16 (int ) ;
 int * PyInt_FromLong (int ) ;

__attribute__((used)) static PyObject *
PLyInt_FromInt16(PLyDatumToOb *arg, Datum d)
{
 return PyInt_FromLong(DatumGetInt16(d));
}
