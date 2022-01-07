
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int * data; int * data_finish_src; } ;
typedef TYPE_1__ _one_to_n_data ;
typedef int NpyAuxData ;


 void* NPY_AUXDATA_CLONE (int *) ;
 int NPY_AUXDATA_FREE (int *) ;
 int PyArray_free (TYPE_1__*) ;
 scalar_t__ PyArray_malloc (int) ;
 int memcpy (TYPE_1__*,int *,int) ;

__attribute__((used)) static NpyAuxData *_one_to_n_data_clone(NpyAuxData *data)
{
    _one_to_n_data *d = (_one_to_n_data *)data;
    _one_to_n_data *newdata;


    newdata = (_one_to_n_data *)PyArray_malloc(sizeof(_one_to_n_data));
    if (newdata == ((void*)0)) {
        return ((void*)0);
    }
    memcpy(newdata, data, sizeof(_one_to_n_data));
    if (d->data != ((void*)0)) {
        newdata->data = NPY_AUXDATA_CLONE(d->data);
        if (newdata->data == ((void*)0)) {
            PyArray_free(newdata);
            return ((void*)0);
        }
    }
    if (d->data_finish_src != ((void*)0)) {
        newdata->data_finish_src = NPY_AUXDATA_CLONE(d->data_finish_src);
        if (newdata->data_finish_src == ((void*)0)) {
            NPY_AUXDATA_FREE(newdata->data);
            PyArray_free(newdata);
            return ((void*)0);
        }
    }

    return (NpyAuxData *)newdata;
}
