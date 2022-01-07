
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int npy_intp ;
typedef int npy_datetime ;
struct TYPE_4__ {int end; int begin; } ;
struct TYPE_5__ {TYPE_1__ holidays; } ;
typedef int PyObject ;
typedef int PyArray_Descr ;
typedef int PyArrayObject ;
typedef TYPE_2__ NpyBusDayCalendar ;


 int NPY_DATETIME ;
 int NPY_FR_D ;
 int PyArray_DATA (int *) ;
 scalar_t__ PyArray_SimpleNewFromDescr (int,int*,int *) ;
 int * create_datetime_dtype_with_unit (int ,int ) ;
 int memcpy (int ,int,int) ;

__attribute__((used)) static PyObject *
busdaycalendar_holidays_get(NpyBusDayCalendar *self)
{
    PyArrayObject *ret;
    PyArray_Descr *date_dtype;
    npy_intp size = self->holidays.end - self->holidays.begin;


    date_dtype = create_datetime_dtype_with_unit(NPY_DATETIME, NPY_FR_D);
    if (date_dtype == ((void*)0)) {
        return ((void*)0);
    }


    ret = (PyArrayObject *)PyArray_SimpleNewFromDescr(1, &size, date_dtype);
    if (ret == ((void*)0)) {
        return ((void*)0);
    }


    if (size > 0) {
        memcpy(PyArray_DATA(ret), self->holidays.begin,
                    size * sizeof(npy_datetime));
    }

    return (PyObject *)ret;
}
