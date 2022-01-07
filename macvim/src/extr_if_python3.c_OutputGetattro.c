
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int softspace; } ;
typedef int PyObject ;
typedef TYPE_1__ OutputObject ;


 int GET_ATTR_STRING (int ,int *) ;
 int * PyLong_FromLong (int ) ;
 int * PyObject_GenericGetAttr (int *,int *) ;
 int name ;
 scalar_t__ strcmp (int ,char*) ;

__attribute__((used)) static PyObject *
OutputGetattro(PyObject *self, PyObject *nameobj)
{
    GET_ATTR_STRING(name, nameobj);

    if (strcmp(name, "softspace") == 0)
 return PyLong_FromLong(((OutputObject *)(self))->softspace);

    return PyObject_GenericGetAttr(self, nameobj);
}
