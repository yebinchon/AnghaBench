
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int value; } ;
typedef TYPE_1__ npy_index_info ;
typedef int PyArrayObject ;


 char* PyArray_BYTES (int *) ;
 int * PyArray_DIMS (int *) ;
 int PyArray_STRIDE (int *,int) ;
 scalar_t__ check_and_adjust_index (int*,int ,int,int *) ;

__attribute__((used)) static int
get_item_pointer(PyArrayObject *self, char **ptr,
                    npy_index_info *indices, int index_num) {
    int i;
    *ptr = PyArray_BYTES(self);
    for (i=0; i < index_num; i++) {
        if ((check_and_adjust_index(&(indices[i].value),
                               PyArray_DIMS(self)[i], i, ((void*)0))) < 0) {
            return -1;
        }
        *ptr += PyArray_STRIDE(self, i) * indices[i].value;
    }
    return 0;
}
