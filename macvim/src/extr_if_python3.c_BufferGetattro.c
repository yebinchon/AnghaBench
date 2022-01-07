
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int PyObject ;
typedef int BufferObject ;


 int * BufferAttr (int *,int ) ;
 int * BufferAttrValid (int *,int ) ;
 scalar_t__ CheckBuffer (int *) ;
 int GET_ATTR_STRING (int ,int *) ;
 scalar_t__ PyErr_Occurred () ;
 int * PyObject_GenericGetAttr (int *,int *) ;
 int name ;

__attribute__((used)) static PyObject *
BufferGetattro(PyObject *self, PyObject *nameobj)
{
    PyObject *r;

    GET_ATTR_STRING(name, nameobj);

    if ((r = BufferAttrValid((BufferObject *)(self), name)))
 return r;

    if (CheckBuffer((BufferObject *)(self)))
 return ((void*)0);

    r = BufferAttr((BufferObject *)(self), name);
    if (r || PyErr_Occurred())
 return r;
    else
 return PyObject_GenericGetAttr(self, nameobj);
}
