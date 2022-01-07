
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * metadata; } ;
typedef int PyObject ;
typedef TYPE_1__ PyArray_Descr ;


 int * PyDictProxy_New (int *) ;
 int Py_RETURN_NONE ;

__attribute__((used)) static PyObject *
arraydescr_metadata_get(PyArray_Descr *self)
{
    if (self->metadata == ((void*)0)) {
        Py_RETURN_NONE;
    }
    return PyDictProxy_New(self->metadata);
}
