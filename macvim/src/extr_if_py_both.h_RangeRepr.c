
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_4__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_7__ {scalar_t__ b_fname; } ;
struct TYPE_6__ {scalar_t__ end; scalar_t__ start; TYPE_1__* buf; } ;
struct TYPE_5__ {TYPE_4__* buf; } ;
typedef TYPE_2__ RangeObject ;
typedef int PyObject ;


 TYPE_4__* INVALID_BUFFER_VALUE ;
 int * PyString_FromFormat (char*,...) ;

__attribute__((used)) static PyObject *
RangeRepr(RangeObject *self)
{
    if (self->buf->buf == INVALID_BUFFER_VALUE)
 return PyString_FromFormat("<range object (for deleted buffer) at %p>",
        (self));
    else
    {
 char *name = (char *)self->buf->buf->b_fname;

 if (name == ((void*)0))
     name = "";

 return PyString_FromFormat("<range %s (%d:%d)>",
        name, (int)self->start, (int)self->end);
    }
}
