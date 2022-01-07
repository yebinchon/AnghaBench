
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
 scalar_t__ FAIL ;
 scalar_t__ InsertBufferLines (TYPE_4__*,int,int *,int*) ;
 int N_ (char*) ;
 int PyArg_ParseTuple (int *,char*,int **,int*) ;
 int PyErr_SET_STRING (int ,int ) ;
 int PyExc_IndexError ;
 int Py_INCREF (int *) ;
 int * Py_None ;

__attribute__((used)) static PyObject *
RBAppend(
 BufferObject *self,
 PyObject *args,
 PyInt start,
 PyInt end,
 PyInt *new_end)
{
    PyObject *lines;
    PyInt len_change;
    PyInt max;
    PyInt n;

    if (CheckBuffer(self))
 return ((void*)0);

    if (end == -1)
 end = self->buf->b_ml.ml_line_count;

    max = n = end - start + 1;

    if (!PyArg_ParseTuple(args, "O|n", &lines, &n))
 return ((void*)0);

    if (n < 0 || n > max)
    {
 PyErr_SET_STRING(PyExc_IndexError, N_("line number out of range"));
 return ((void*)0);
    }

    if (InsertBufferLines(self->buf, n + start - 1, lines, &len_change) == FAIL)
 return ((void*)0);

    if (new_end)
 *new_end = end + len_change;

    Py_INCREF(Py_None);
    return Py_None;
}
