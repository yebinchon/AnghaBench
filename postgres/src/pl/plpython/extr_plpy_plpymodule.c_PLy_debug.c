
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int PyObject ;


 int DEBUG2 ;
 int * PLy_output (int ,int *,int *,int *) ;

__attribute__((used)) static PyObject *
PLy_debug(PyObject *self, PyObject *args, PyObject *kw)
{
 return PLy_output(DEBUG2, self, args, kw);
}
