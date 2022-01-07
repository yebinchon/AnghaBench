
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int (* tp_free ) (int *) ;} ;
struct TYPE_5__ {int arr; } ;
typedef int PyObject ;
typedef TYPE_1__ PyArrayFlagsObject ;


 TYPE_3__* Py_TYPE (TYPE_1__*) ;
 int Py_XDECREF (int ) ;
 int stub1 (int *) ;

__attribute__((used)) static void
arrayflags_dealloc(PyArrayFlagsObject *self)
{
    Py_XDECREF(self->arr);
    Py_TYPE(self)->tp_free((PyObject *)self);
}
