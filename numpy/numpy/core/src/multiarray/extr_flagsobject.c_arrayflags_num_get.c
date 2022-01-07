
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int flags; } ;
typedef int PyObject ;
typedef TYPE_1__ PyArrayFlagsObject ;


 int * PyInt_FromLong (int ) ;

__attribute__((used)) static PyObject *
arrayflags_num_get(PyArrayFlagsObject *self)
{
    return PyInt_FromLong(self->flags);
}
