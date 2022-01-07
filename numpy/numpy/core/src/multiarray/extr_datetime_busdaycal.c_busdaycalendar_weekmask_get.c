
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int npy_intp ;
struct TYPE_3__ {int weekmask; } ;
typedef int PyObject ;
typedef int PyArrayObject ;
typedef TYPE_1__ NpyBusDayCalendar ;


 int NPY_BOOL ;
 int PyArray_DATA (int *) ;
 scalar_t__ PyArray_SimpleNew (int,int*,int ) ;
 int memcpy (int ,int ,int) ;

__attribute__((used)) static PyObject *
busdaycalendar_weekmask_get(NpyBusDayCalendar *self)
{
    PyArrayObject *ret;
    npy_intp size = 7;


    ret = (PyArrayObject *)PyArray_SimpleNew(1, &size, NPY_BOOL);
    if (ret == ((void*)0)) {
        return ((void*)0);
    }


    memcpy(PyArray_DATA(ret), self->weekmask, 7);

    return (PyObject *)ret;
}
