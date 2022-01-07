
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int aop; int aip; } ;
typedef TYPE_1__ _strided_cast_data ;
typedef int NpyAuxData ;


 int PyArray_free (int *) ;
 int Py_DECREF (int ) ;

__attribute__((used)) static void _strided_cast_data_free(NpyAuxData *data)
{
    _strided_cast_data *d = (_strided_cast_data *)data;
    Py_DECREF(d->aip);
    Py_DECREF(d->aop);
    PyArray_free(data);
}
