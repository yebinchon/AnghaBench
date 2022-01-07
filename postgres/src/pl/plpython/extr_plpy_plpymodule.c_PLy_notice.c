
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int PyObject ;


 int NOTICE ;
 int * PLy_output (int ,int *,int *,int *) ;

__attribute__((used)) static PyObject *
PLy_notice(PyObject *self, PyObject *args, PyObject *kw)
{
 return PLy_output(NOTICE, self, args, kw);
}
