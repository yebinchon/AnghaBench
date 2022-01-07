
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int npy_intp ;
struct TYPE_3__ {int index; int* factors; int* coordinates; scalar_t__ contiguous; int ao; } ;
typedef int PyObject ;
typedef TYPE_1__ PyArrayIterObject ;


 int * PyArray_IntTupleFromIntp (int,int*) ;
 int PyArray_NDIM (int ) ;

__attribute__((used)) static PyObject *
iter_coords_get(PyArrayIterObject *self)
{
    int nd;
    nd = PyArray_NDIM(self->ao);
    if (self->contiguous) {




        npy_intp val;
        int i;
        val = self->index;
        for (i = 0; i < nd; i++) {
            if (self->factors[i] != 0) {
                self->coordinates[i] = val / self->factors[i];
                val = val % self->factors[i];
            } else {
                self->coordinates[i] = 0;
            }
        }
    }
    return PyArray_IntTupleFromIntp(nd, self->coordinates);
}
