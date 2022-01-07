
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int * data; } ;
typedef TYPE_1__ _n_to_n_data ;
typedef int NpyAuxData ;


 int * NPY_AUXDATA_CLONE (int *) ;
 int PyArray_free (TYPE_1__*) ;
 scalar_t__ PyArray_malloc (int) ;
 int memcpy (TYPE_1__*,int *,int) ;

__attribute__((used)) static NpyAuxData *_n_to_n_data_clone(NpyAuxData *data)
{
    _n_to_n_data *d = (_n_to_n_data *)data;
    _n_to_n_data *newdata;


    newdata = (_n_to_n_data *)PyArray_malloc(sizeof(_n_to_n_data));
    if (newdata == ((void*)0)) {
        return ((void*)0);
    }
    memcpy(newdata, data, sizeof(_n_to_n_data));
    if (newdata->data != ((void*)0)) {
        newdata->data = NPY_AUXDATA_CLONE(d->data);
        if (newdata->data == ((void*)0)) {
            PyArray_free(newdata);
            return ((void*)0);
        }
    }

    return (NpyAuxData *)newdata;
}
