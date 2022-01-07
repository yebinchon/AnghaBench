
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int arr; } ;
typedef TYPE_1__ _wrap_copy_swap_data ;
typedef int NpyAuxData ;


 scalar_t__ PyArray_malloc (int) ;
 int Py_INCREF (int ) ;
 int memcpy (TYPE_1__*,int *,int) ;

__attribute__((used)) static NpyAuxData *_wrap_copy_swap_data_clone(NpyAuxData *data)
{
    _wrap_copy_swap_data *newdata =
        (_wrap_copy_swap_data *)PyArray_malloc(sizeof(_wrap_copy_swap_data));
    if (newdata == ((void*)0)) {
        return ((void*)0);
    }

    memcpy(newdata, data, sizeof(_wrap_copy_swap_data));
    Py_INCREF(newdata->arr);

    return (NpyAuxData *)newdata;
}
