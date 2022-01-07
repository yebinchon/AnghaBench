
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int npy_intp ;
struct TYPE_6__ {int * data; } ;
typedef TYPE_1__ _single_field_transfer ;
struct TYPE_7__ {int field_count; TYPE_1__ fields; } ;
typedef TYPE_2__ _field_transfer_data ;
typedef int NpyAuxData ;


 int * NPY_AUXDATA_CLONE (int *) ;
 int NPY_AUXDATA_FREE (int *) ;
 int PyArray_free (TYPE_2__*) ;
 scalar_t__ PyArray_malloc (int) ;
 int memcpy (TYPE_2__*,TYPE_2__*,int) ;

__attribute__((used)) static NpyAuxData *_field_transfer_data_clone(NpyAuxData *data)
{
    _field_transfer_data *d = (_field_transfer_data *)data;
    _field_transfer_data *newdata;
    npy_intp i, field_count = d->field_count, structsize;
    _single_field_transfer *fields, *newfields;

    structsize = sizeof(_field_transfer_data) +
                    field_count * sizeof(_single_field_transfer);


    newdata = (_field_transfer_data *)PyArray_malloc(structsize);
    if (newdata == ((void*)0)) {
        return ((void*)0);
    }
    memcpy(newdata, d, structsize);

    fields = &d->fields;
    newfields = &newdata->fields;
    for (i = 0; i < field_count; ++i) {
        if (fields[i].data != ((void*)0)) {
            newfields[i].data = NPY_AUXDATA_CLONE(fields[i].data);
            if (newfields[i].data == ((void*)0)) {
                for (i = i-1; i >= 0; --i) {
                    NPY_AUXDATA_FREE(newfields[i].data);
                }
                PyArray_free(newdata);
                return ((void*)0);
            }
        }

    }

    return (NpyAuxData *)newdata;
}
