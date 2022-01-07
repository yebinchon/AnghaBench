
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int decsrcref_transferdata; int transferdata; } ;
typedef TYPE_1__ _masked_wrapper_transfer_data ;
typedef int NpyAuxData ;


 int NPY_AUXDATA_FREE (int ) ;
 int PyArray_free (int *) ;

__attribute__((used)) static void _masked_wrapper_transfer_data_free(NpyAuxData *data)
{
    _masked_wrapper_transfer_data *d = (_masked_wrapper_transfer_data *)data;
    NPY_AUXDATA_FREE(d->transferdata);
    NPY_AUXDATA_FREE(d->decsrcref_transferdata);
    PyArray_free(data);
}
