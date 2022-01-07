
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int dv_refcount; } ;
typedef TYPE_1__ dict_T ;
typedef int PyTypeObject ;
typedef int PyObject ;
typedef int DictionaryObject ;


 scalar_t__ DictionaryNew (int *,TYPE_1__*) ;
 int * DictionaryUpdate (int *,int *,int *) ;
 scalar_t__ PyTuple_Size (int *) ;
 int Py_DECREF (int *) ;
 TYPE_1__* py_dict_alloc () ;

__attribute__((used)) static PyObject *
DictionaryConstructor(PyTypeObject *subtype, PyObject *args, PyObject *kwargs)
{
    DictionaryObject *self;
    dict_T *dict;

    if (!(dict = py_dict_alloc()))
 return ((void*)0);

    self = (DictionaryObject *) DictionaryNew(subtype, dict);

    --dict->dv_refcount;

    if (kwargs || PyTuple_Size(args))
    {
 PyObject *tmp;
 if (!(tmp = DictionaryUpdate(self, args, kwargs)))
 {
     Py_DECREF(self);
     return ((void*)0);
 }

 Py_DECREF(tmp);
    }

    return (PyObject *)(self);
}
