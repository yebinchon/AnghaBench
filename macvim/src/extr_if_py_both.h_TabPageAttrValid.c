
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ tab; } ;
typedef TYPE_1__ TabPageObject ;
typedef int PyObject ;


 scalar_t__ INVALID_TABPAGE_VALUE ;
 int * Py_False ;
 int Py_INCREF (int *) ;
 int * Py_True ;
 scalar_t__ strcmp (char*,char*) ;

__attribute__((used)) static PyObject *
TabPageAttrValid(TabPageObject *self, char *name)
{
    PyObject *ret;

    if (strcmp(name, "valid") != 0)
 return ((void*)0);

    ret = ((self->tab == INVALID_TABPAGE_VALUE) ? Py_False : Py_True);
    Py_INCREF(ret);
    return ret;
}
