
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int PyObject ;
typedef int PLyDatumToOb ;
typedef int Datum ;


 int DatumGetObjectId (int ) ;
 int * PyLong_FromUnsignedLong (int ) ;

__attribute__((used)) static PyObject *
PLyLong_FromOid(PLyDatumToOb *arg, Datum d)
{
 return PyLong_FromUnsignedLong(DatumGetObjectId(d));
}
