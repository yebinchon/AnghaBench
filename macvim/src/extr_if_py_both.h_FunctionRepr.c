
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * name; } ;
typedef int PyObject ;
typedef TYPE_1__ FunctionObject ;


 int * PyString_FromFormat (char*,char*) ;

__attribute__((used)) static PyObject *
FunctionRepr(FunctionObject *self)
{






    return PyString_FromFormat("<vim.Function '%s'>", (char *)self->name);

}
