
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int fromdata; int todata; int wrappeddata; } ;
typedef TYPE_1__ _align_wrap_data ;
typedef int NpyAuxData ;


 int NPY_AUXDATA_FREE (int ) ;
 int PyArray_free (int *) ;

__attribute__((used)) static void _align_wrap_data_free(NpyAuxData *data)
{
    _align_wrap_data *d = (_align_wrap_data *)data;
    NPY_AUXDATA_FREE(d->wrappeddata);
    NPY_AUXDATA_FREE(d->todata);
    NPY_AUXDATA_FREE(d->fromdata);
    PyArray_free(data);
}
