
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int arr; } ;
typedef TYPE_1__ _wrap_copy_swap_data ;
typedef int NpyAuxData ;


 int PyArray_free (int *) ;
 int Py_DECREF (int ) ;

__attribute__((used)) static void _wrap_copy_swap_data_free(NpyAuxData *data)
{
    _wrap_copy_swap_data *d = (_wrap_copy_swap_data *)data;
    Py_DECREF(d->arr);
    PyArray_free(data);
}
