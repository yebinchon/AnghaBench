
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int mp_obj_t ;
typedef scalar_t__ mp_int_t ;
struct TYPE_3__ {scalar_t__ start; scalar_t__ stop; scalar_t__ step; } ;
typedef TYPE_1__ mp_bound_slice_t ;


 int mp_obj_list_append (int ,int const) ;
 int mp_obj_new_list (int ,int *) ;

mp_obj_t mp_seq_extract_slice(size_t len, const mp_obj_t *seq, mp_bound_slice_t *indexes) {
    (void)len;

    mp_int_t start = indexes->start, stop = indexes->stop;
    mp_int_t step = indexes->step;

    mp_obj_t res = mp_obj_new_list(0, ((void*)0));

    if (step < 0) {
        while (start >= stop) {
            mp_obj_list_append(res, seq[start]);
            start += step;
        }
    } else {
        while (start < stop) {
            mp_obj_list_append(res, seq[start]);
            start += step;
        }
    }
    return res;
}
