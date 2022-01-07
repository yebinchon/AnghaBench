
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int (* tp_free ) (int *) ;} ;
struct TYPE_5__ {int numiter; int * iters; } ;
typedef int PyObject ;
typedef TYPE_1__ PyArrayMultiIterObject ;


 TYPE_3__* Py_TYPE (TYPE_1__*) ;
 int Py_XDECREF (int ) ;
 int stub1 (int *) ;

__attribute__((used)) static void
arraymultiter_dealloc(PyArrayMultiIterObject *multi)
{
    int i;

    for (i = 0; i < multi->numiter; i++) {
        Py_XDECREF(multi->iters[i]);
    }
    Py_TYPE(multi)->tp_free((PyObject *)multi);
}
