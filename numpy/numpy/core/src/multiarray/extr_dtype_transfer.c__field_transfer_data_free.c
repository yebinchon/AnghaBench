
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef size_t npy_intp ;
struct TYPE_4__ {int data; } ;
typedef TYPE_1__ _single_field_transfer ;
struct TYPE_5__ {size_t field_count; TYPE_1__ fields; } ;
typedef TYPE_2__ _field_transfer_data ;
typedef int NpyAuxData ;


 int NPY_AUXDATA_FREE (int ) ;
 int PyArray_free (TYPE_2__*) ;

__attribute__((used)) static void _field_transfer_data_free(NpyAuxData *data)
{
    _field_transfer_data *d = (_field_transfer_data *)data;
    npy_intp i, field_count;
    _single_field_transfer *fields;

    field_count = d->field_count;
    fields = &d->fields;

    for (i = 0; i < field_count; ++i) {
        NPY_AUXDATA_FREE(fields[i].data);
    }
    PyArray_free(d);
}
