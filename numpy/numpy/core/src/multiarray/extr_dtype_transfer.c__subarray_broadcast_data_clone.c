
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int npy_intp ;
typedef int _subarray_broadcast_offsetrun ;
struct TYPE_4__ {int run_count; int * data_decsrcref; int * data; int * data_decdstref; } ;
typedef TYPE_1__ _subarray_broadcast_data ;
typedef int NpyAuxData ;


 void* NPY_AUXDATA_CLONE (int *) ;
 int NPY_AUXDATA_FREE (int *) ;
 int PyArray_free (TYPE_1__*) ;
 scalar_t__ PyArray_malloc (int) ;
 int memcpy (TYPE_1__*,int *,int) ;

__attribute__((used)) static NpyAuxData *_subarray_broadcast_data_clone( NpyAuxData *data)
{
    _subarray_broadcast_data *d = (_subarray_broadcast_data *)data;
    _subarray_broadcast_data *newdata;
    npy_intp run_count = d->run_count, structsize;

    structsize = sizeof(_subarray_broadcast_data) +
                        run_count*sizeof(_subarray_broadcast_offsetrun);


    newdata = (_subarray_broadcast_data *)PyArray_malloc(structsize);
    if (newdata == ((void*)0)) {
        return ((void*)0);
    }
    memcpy(newdata, data, structsize);
    if (d->data != ((void*)0)) {
        newdata->data = NPY_AUXDATA_CLONE(d->data);
        if (newdata->data == ((void*)0)) {
            PyArray_free(newdata);
            return ((void*)0);
        }
    }
    if (d->data_decsrcref != ((void*)0)) {
        newdata->data_decsrcref = NPY_AUXDATA_CLONE(d->data_decsrcref);
        if (newdata->data_decsrcref == ((void*)0)) {
            NPY_AUXDATA_FREE(newdata->data);
            PyArray_free(newdata);
            return ((void*)0);
        }
    }
    if (d->data_decdstref != ((void*)0)) {
        newdata->data_decdstref = NPY_AUXDATA_CLONE(d->data_decdstref);
        if (newdata->data_decdstref == ((void*)0)) {
            NPY_AUXDATA_FREE(newdata->data);
            NPY_AUXDATA_FREE(newdata->data_decsrcref);
            PyArray_free(newdata);
            return ((void*)0);
        }
    }

    return (NpyAuxData *)newdata;
}
