
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int TabPageObject ;
typedef int PyObject ;


 scalar_t__ CheckTabPage (int *) ;
 scalar_t__ PyErr_Occurred () ;
 int * Py_FindMethod (int ,int *,char*) ;
 int * TabPageAttr (int *,char*) ;
 int * TabPageAttrValid (int *,char*) ;
 int TabPageMethods ;

__attribute__((used)) static PyObject *
TabPageGetattr(PyObject *self, char *name)
{
    PyObject *r;

    if ((r = TabPageAttrValid((TabPageObject *)(self), name)))
 return r;

    if (CheckTabPage((TabPageObject *)(self)))
 return ((void*)0);

    r = TabPageAttr((TabPageObject *)(self), name);
    if (r || PyErr_Occurred())
 return r;
    else
 return Py_FindMethod(TabPageMethods, self, name);
}
