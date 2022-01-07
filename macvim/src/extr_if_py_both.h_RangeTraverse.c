
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int visitproc ;
struct TYPE_3__ {scalar_t__ buf; } ;
typedef TYPE_1__ RangeObject ;
typedef int PyObject ;


 int Py_VISIT (int *) ;

__attribute__((used)) static int
RangeTraverse(RangeObject *self, visitproc visit, void *arg)
{
    Py_VISIT(((PyObject *)(self->buf)));
    return 0;
}
