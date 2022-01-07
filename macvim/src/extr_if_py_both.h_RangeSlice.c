
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int end; int start; int buf; } ;
typedef TYPE_1__ RangeObject ;
typedef int PyObject ;
typedef int PyInt ;


 int * RBSlice (int ,int ,int ,int ,int ) ;

__attribute__((used)) static PyObject *
RangeSlice(RangeObject *self, PyInt lo, PyInt hi)
{
    return RBSlice(self->buf, lo, hi, self->start, self->end);
}
