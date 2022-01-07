
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int data_decdstref; int data_decsrcref; int data; } ;
typedef TYPE_1__ _subarray_broadcast_data ;
typedef int NpyAuxData ;


 int NPY_AUXDATA_FREE (int ) ;
 int PyArray_free (int *) ;

__attribute__((used)) static void _subarray_broadcast_data_free(NpyAuxData *data)
{
    _subarray_broadcast_data *d = (_subarray_broadcast_data *)data;
    NPY_AUXDATA_FREE(d->data);
    NPY_AUXDATA_FREE(d->data_decsrcref);
    NPY_AUXDATA_FREE(d->data_decdstref);
    PyArray_free(data);
}
