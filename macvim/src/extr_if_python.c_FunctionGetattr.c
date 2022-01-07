
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ name; } ;
typedef int PyObject ;
typedef TYPE_1__ FunctionObject ;


 int FunctionAttrs ;
 int FunctionMethods ;
 int * ObjectDir (int *,int ) ;
 int * PyString_FromString (char*) ;
 int * Py_FindMethod (int ,int *,char*) ;
 scalar_t__ strcmp (char*,char*) ;

__attribute__((used)) static PyObject *
FunctionGetattr(PyObject *self, char *name)
{
    FunctionObject *this = (FunctionObject *)(self);

    if (strcmp(name, "name") == 0)
 return PyString_FromString((char *)(this->name));
    else if (strcmp(name, "__members__") == 0)
 return ObjectDir(((void*)0), FunctionAttrs);
    else
 return Py_FindMethod(FunctionMethods, self, name);
}
