
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int win_T ;
struct TYPE_3__ {int tabObject; } ;
typedef TYPE_1__ WinListObject ;
typedef int PyInt ;


 int * W_NEXT (int *) ;
 int * get_firstwin (int ) ;

__attribute__((used)) static PyInt
WinListLength(WinListObject *self)
{
    win_T *w;
    PyInt n = 0;

    if (!(w = get_firstwin(self->tabObject)))
 return -1;

    while (w != ((void*)0))
    {
 ++n;
 w = W_NEXT(w);
    }

    return n;
}
