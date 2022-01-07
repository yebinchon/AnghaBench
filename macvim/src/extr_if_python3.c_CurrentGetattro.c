
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int PyObject ;


 int * CurrentGetattr (int *,int ) ;
 int GET_ATTR_STRING (int ,int *) ;
 int * PyObject_GenericGetAttr (int *,int *) ;
 int name ;

__attribute__((used)) static PyObject *
CurrentGetattro(PyObject *self, PyObject *nameobj)
{
    PyObject *r;
    GET_ATTR_STRING(name, nameobj);
    if (!(r = CurrentGetattr(self, name)))
 return PyObject_GenericGetAttr(self, nameobj);
    return r;
}
