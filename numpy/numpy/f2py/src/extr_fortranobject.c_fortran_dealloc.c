
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int dict; } ;
typedef TYPE_1__ PyFortranObject ;


 int PyObject_Del (TYPE_1__*) ;
 int Py_XDECREF (int ) ;

__attribute__((used)) static void
fortran_dealloc(PyFortranObject *fp) {
    Py_XDECREF(fp->dict);
    PyObject_Del(fp);
}
