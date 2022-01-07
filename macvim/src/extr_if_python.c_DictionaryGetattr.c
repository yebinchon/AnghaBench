
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {TYPE_1__* dict; } ;
struct TYPE_3__ {int dv_scope; int dv_lock; } ;
typedef int PyObject ;
typedef TYPE_2__ DictionaryObject ;


 int DictionaryAttrs ;
 int DictionaryMethods ;
 int * ObjectDir (int *,int ) ;
 int * PyInt_FromLong (int ) ;
 int * Py_FindMethod (int ,int *,char*) ;
 scalar_t__ strcmp (char*,char*) ;

__attribute__((used)) static PyObject *
DictionaryGetattr(PyObject *self, char *name)
{
    DictionaryObject *this = ((DictionaryObject *) (self));

    if (strcmp(name, "locked") == 0)
 return PyInt_FromLong(this->dict->dv_lock);
    else if (strcmp(name, "scope") == 0)
 return PyInt_FromLong(this->dict->dv_scope);
    else if (strcmp(name, "__members__") == 0)
 return ObjectDir(((void*)0), DictionaryAttrs);

    return Py_FindMethod(DictionaryMethods, self, name);
}
