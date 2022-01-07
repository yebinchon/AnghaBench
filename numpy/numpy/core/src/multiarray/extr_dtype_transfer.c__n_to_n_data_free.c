
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int data; } ;
typedef TYPE_1__ _n_to_n_data ;
typedef int NpyAuxData ;


 int NPY_AUXDATA_FREE (int ) ;
 int PyArray_free (int *) ;

__attribute__((used)) static void _n_to_n_data_free(NpyAuxData *data)
{
    _n_to_n_data *d = (_n_to_n_data *)data;
    NPY_AUXDATA_FREE(d->data);
    PyArray_free(data);
}
