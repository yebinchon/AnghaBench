
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int * transferdata; int * decsrcref_transferdata; } ;
typedef TYPE_1__ _masked_wrapper_transfer_data ;
typedef int NpyAuxData ;


 void* NPY_AUXDATA_CLONE (int *) ;
 int NPY_AUXDATA_FREE (int *) ;
 int PyArray_free (TYPE_1__*) ;
 scalar_t__ PyArray_malloc (int) ;
 int memcpy (TYPE_1__*,TYPE_1__*,int) ;

__attribute__((used)) static NpyAuxData *_masked_wrapper_transfer_data_clone(NpyAuxData *data)
{
    _masked_wrapper_transfer_data *d = (_masked_wrapper_transfer_data *)data;
    _masked_wrapper_transfer_data *newdata;


    newdata = (_masked_wrapper_transfer_data *)PyArray_malloc(
                                    sizeof(_masked_wrapper_transfer_data));
    if (newdata == ((void*)0)) {
        return ((void*)0);
    }
    memcpy(newdata, d, sizeof(_masked_wrapper_transfer_data));


    if (newdata->transferdata != ((void*)0)) {
        newdata->transferdata = NPY_AUXDATA_CLONE(newdata->transferdata);
        if (newdata->transferdata == ((void*)0)) {
            PyArray_free(newdata);
            return ((void*)0);
        }
    }
    if (newdata->decsrcref_transferdata != ((void*)0)) {
        newdata->decsrcref_transferdata =
                        NPY_AUXDATA_CLONE(newdata->decsrcref_transferdata);
        if (newdata->decsrcref_transferdata == ((void*)0)) {
            NPY_AUXDATA_FREE(newdata->transferdata);
            PyArray_free(newdata);
            return ((void*)0);
        }
    }

    return (NpyAuxData *)newdata;
}
