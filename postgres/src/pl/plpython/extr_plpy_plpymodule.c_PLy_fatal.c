
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int PyObject ;


 int FATAL ;
 int * PLy_output (int ,int *,int *,int *) ;

__attribute__((used)) static PyObject *
PLy_fatal(PyObject *self, PyObject *args, PyObject *kw)
{
 return PLy_output(FATAL, self, args, kw);
}
