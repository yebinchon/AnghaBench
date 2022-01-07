
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int buf; } ;
typedef int PyObject ;
typedef int PyInt ;
typedef TYPE_1__ BufferObject ;


 scalar_t__ CheckBuffer (TYPE_1__*) ;
 int PyArg_ParseTuple (int *,char*,int *,int *) ;
 int * RangeNew (int ,int ,int ) ;

__attribute__((used)) static PyObject *
BufferRange(BufferObject *self, PyObject *args)
{
    PyInt start;
    PyInt end;

    if (CheckBuffer(self))
 return ((void*)0);

    if (!PyArg_ParseTuple(args, "nn", &start, &end))
 return ((void*)0);

    return RangeNew(self->buf, start, end);
}
