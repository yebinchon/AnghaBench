
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int PyObject ;
typedef int PLyDatumToOb ;
typedef int Datum ;


 int DatumGetFloat8 (int ) ;
 int * PyFloat_FromDouble (int ) ;

__attribute__((used)) static PyObject *
PLyFloat_FromFloat8(PLyDatumToOb *arg, Datum d)
{
 return PyFloat_FromDouble(DatumGetFloat8(d));
}
