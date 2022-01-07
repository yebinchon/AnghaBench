
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int * (* fortranfunc ) (int *,int *,int *,void*) ;
struct TYPE_5__ {TYPE_1__* defs; } ;
struct TYPE_4__ {int rank; int * data; int * func; } ;
typedef int PyObject ;
typedef TYPE_2__ PyFortranObject ;


 int PyErr_Format (int ,char*) ;
 int PyExc_RuntimeError ;
 int PyExc_TypeError ;
 int * stub1 (int *,int *,int *,void*) ;
 int * stub2 (int *,int *,int *,void*) ;

__attribute__((used)) static PyObject*
fortran_call(PyFortranObject *fp, PyObject *arg, PyObject *kw) {
    int i = 0;



    if (fp->defs[i].rank==-1) {
        if (fp->defs[i].func==((void*)0)) {
            PyErr_Format(PyExc_RuntimeError, "no function to call");
            return ((void*)0);
        }
        else if (fp->defs[i].data==((void*)0))

            return (*((fortranfunc)(fp->defs[i].func)))((PyObject *)fp,arg,kw,((void*)0));
        else
            return (*((fortranfunc)(fp->defs[i].func)))((PyObject *)fp,arg,kw,
                                                        (void *)fp->defs[i].data);
    }
    PyErr_Format(PyExc_TypeError, "this fortran object is not callable");
    return ((void*)0);
}
