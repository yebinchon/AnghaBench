
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int PyObject ;
typedef int PLyObToDatum ;
typedef int Datum ;


 int BoolGetDatum (int ) ;
 int PyObject_IsTrue (int *) ;
 int * Py_None ;

__attribute__((used)) static Datum
PLyObject_ToBool(PLyObToDatum *arg, PyObject *plrv,
     bool *isnull, bool inarray)
{
 if (plrv == Py_None)
 {
  *isnull = 1;
  return (Datum) 0;
 }
 *isnull = 0;
 return BoolGetDatum(PyObject_IsTrue(plrv));
}
