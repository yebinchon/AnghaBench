
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int PyObject ;


 int Py_INCREF (int *) ;
 int * Py_None ;

__attribute__((used)) static inline PyObject *python_none(void)
{
 PyObject *none = Py_None;
 Py_INCREF(none);
 return none;
}
