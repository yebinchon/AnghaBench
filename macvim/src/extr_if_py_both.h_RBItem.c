
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int ml_line_count; } ;
struct TYPE_8__ {TYPE_1__ b_ml; } ;
struct TYPE_7__ {TYPE_4__* buf; } ;
typedef int PyObject ;
typedef int PyInt ;
typedef TYPE_2__ BufferObject ;


 scalar_t__ CheckBuffer (TYPE_2__*) ;
 int * GetBufferLine (TYPE_4__*,int) ;
 int N_ (char*) ;
 int PyErr_SET_STRING (int ,int ) ;
 int PyExc_IndexError ;

__attribute__((used)) static PyObject *
RBItem(BufferObject *self, PyInt n, PyInt start, PyInt end)
{
    if (CheckBuffer(self))
 return ((void*)0);

    if (end == -1)
 end = self->buf->b_ml.ml_line_count;

    if (n < 0)
 n += end - start + 1;

    if (n < 0 || n > end - start)
    {
 PyErr_SET_STRING(PyExc_IndexError, N_("line number out of range"));
 return ((void*)0);
    }

    return GetBufferLine(self->buf, n+start);
}
