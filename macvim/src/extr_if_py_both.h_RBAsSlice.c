
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int ml_line_count; } ;
struct TYPE_8__ {TYPE_1__ b_ml; } ;
struct TYPE_7__ {TYPE_3__* buf; } ;
typedef int PyObject ;
typedef int PyInt ;
typedef TYPE_2__ BufferObject ;


 scalar_t__ CheckBuffer (TYPE_2__*) ;
 scalar_t__ FAIL ;
 scalar_t__ SetBufferLineList (TYPE_3__*,int,int,int *,int*) ;

__attribute__((used)) static PyInt
RBAsSlice(
 BufferObject *self,
 PyInt lo,
 PyInt hi,
 PyObject *valObject,
 PyInt start,
 PyInt end,
 PyInt *new_end)
{
    PyInt size;
    PyInt len_change;


    if (CheckBuffer(self))
 return -1;

    if (end == -1)
 end = self->buf->b_ml.ml_line_count;


    size = end - start + 1;

    if (lo < 0)
 lo = 0;
    else if (lo > size)
 lo = size;
    if (hi < 0)
 hi = 0;
    if (hi < lo)
 hi = lo;
    else if (hi > size)
 hi = size;

    if (SetBufferLineList(self->buf, lo + start, hi + start,
      valObject, &len_change) == FAIL)
 return -1;

    if (new_end)
 *new_end = end + len_change;

    return 0;
}
