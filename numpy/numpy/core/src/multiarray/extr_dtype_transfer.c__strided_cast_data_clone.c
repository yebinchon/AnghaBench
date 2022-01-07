
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int aop; int aip; } ;
typedef TYPE_1__ _strided_cast_data ;
typedef int NpyAuxData ;


 scalar_t__ PyArray_malloc (int) ;
 int Py_INCREF (int ) ;
 int memcpy (TYPE_1__*,int *,int) ;

__attribute__((used)) static NpyAuxData *_strided_cast_data_clone(NpyAuxData *data)
{
    _strided_cast_data *newdata =
            (_strided_cast_data *)PyArray_malloc(sizeof(_strided_cast_data));
    if (newdata == ((void*)0)) {
        return ((void*)0);
    }

    memcpy(newdata, data, sizeof(_strided_cast_data));
    Py_INCREF(newdata->aip);
    Py_INCREF(newdata->aop);

    return (NpyAuxData *)newdata;
}
