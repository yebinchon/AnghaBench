
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ stride; scalar_t__ perm; } ;
typedef TYPE_1__ npy_stride_sort_item ;
typedef scalar_t__ npy_intp ;



__attribute__((used)) static int _npy_stride_sort_item_comparator(const void *a, const void *b)
{
    npy_intp astride = ((const npy_stride_sort_item *)a)->stride,
            bstride = ((const npy_stride_sort_item *)b)->stride;


    if (astride < 0) {
        astride = -astride;
    }
    if (bstride < 0) {
        bstride = -bstride;
    }

    if (astride == bstride) {




        npy_intp aperm = ((const npy_stride_sort_item *)a)->perm,
                bperm = ((const npy_stride_sort_item *)b)->perm;
        return (aperm < bperm) ? -1 : 1;
    }
    if (astride > bstride) {
        return -1;
    }
    return 1;
}
