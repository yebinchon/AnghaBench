
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int end; int start; int buf; } ;
typedef TYPE_1__ RangeObject ;
typedef int PyObject ;
typedef int PyInt ;


 int RBAsItem (int ,int ,int *,int ,int ,int *) ;

__attribute__((used)) static PyInt
RangeAssItem(PyObject *self, PyInt n, PyObject *val)
{
    return RBAsItem(((RangeObject *)(self))->buf, n, val,
       ((RangeObject *)(self))->start,
       ((RangeObject *)(self))->end,
       &((RangeObject *)(self))->end);
}
