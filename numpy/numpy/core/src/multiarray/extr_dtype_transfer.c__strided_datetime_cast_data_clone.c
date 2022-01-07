
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int src_itemsize; int * tmp_buffer; } ;
typedef TYPE_1__ _strided_datetime_cast_data ;
typedef int NpyAuxData ;


 int PyArray_free (TYPE_1__*) ;
 int * PyArray_malloc (int) ;
 int memcpy (TYPE_1__*,int *,int) ;

__attribute__((used)) static NpyAuxData *_strided_datetime_cast_data_clone(NpyAuxData *data)
{
    _strided_datetime_cast_data *newdata =
            (_strided_datetime_cast_data *)PyArray_malloc(
                                        sizeof(_strided_datetime_cast_data));
    if (newdata == ((void*)0)) {
        return ((void*)0);
    }

    memcpy(newdata, data, sizeof(_strided_datetime_cast_data));
    if (newdata->tmp_buffer != ((void*)0)) {
        newdata->tmp_buffer = PyArray_malloc(newdata->src_itemsize + 1);
        if (newdata->tmp_buffer == ((void*)0)) {
            PyArray_free(newdata);
            return ((void*)0);
        }
    }

    return (NpyAuxData *)newdata;
}
