
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ win; } ;
typedef TYPE_1__ WindowObject ;
typedef int PyObject ;


 scalar_t__ INVALID_WINDOW_VALUE ;
 int * PyString_FromFormat (char*,...) ;
 int firstwin ;
 int get_win_number (scalar_t__,int ) ;

__attribute__((used)) static PyObject *
WindowRepr(WindowObject *self)
{
    if (self->win == INVALID_WINDOW_VALUE)
 return PyString_FromFormat("<window object (deleted) at %p>", (self));
    else
    {
 int w = get_win_number(self->win, firstwin);

 if (w == 0)
     return PyString_FromFormat("<window object (unknown) at %p>",
              (self));
 else
     return PyString_FromFormat("<window %d>", w - 1);
    }
}
