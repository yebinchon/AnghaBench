
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int * end; int * begin; } ;
struct TYPE_5__ {int busdays_in_weekmask; int* weekmask; TYPE_2__ holidays; } ;
typedef int PyObject ;
typedef TYPE_1__ NpyBusDayCalendar ;


 int PyArg_ParseTupleAndKeywords (int *,int *,char*,char**,int *,int*,int *,TYPE_2__*) ;
 int PyArray_HolidaysConverter ;
 int PyArray_WeekMaskConverter ;
 int PyArray_free (int *) ;
 int PyErr_SetString (int ,char*) ;
 int PyExc_ValueError ;
 int normalize_holidays_list (TYPE_2__*,int*) ;

__attribute__((used)) static int
busdaycalendar_init(NpyBusDayCalendar *self, PyObject *args, PyObject *kwds)
{
    static char *kwlist[] = {"weekmask", "holidays", ((void*)0)};
    int i, busdays_in_weekmask;


    if (self->holidays.begin != ((void*)0)) {
        PyArray_free(self->holidays.begin);
        self->holidays.begin = ((void*)0);
        self->holidays.end = ((void*)0);
    }


    self->busdays_in_weekmask = 5;
    self->weekmask[0] = 1;
    self->weekmask[1] = 1;
    self->weekmask[2] = 1;
    self->weekmask[3] = 1;
    self->weekmask[4] = 1;
    self->weekmask[5] = 0;
    self->weekmask[6] = 0;


    if (!PyArg_ParseTupleAndKeywords(args, kwds,
                        "|O&O&:busdaycal", kwlist,
                        &PyArray_WeekMaskConverter, &self->weekmask[0],
                        &PyArray_HolidaysConverter, &self->holidays)) {
        return -1;
    }


    busdays_in_weekmask = 0;
    for (i = 0; i < 7; ++i) {
        busdays_in_weekmask += self->weekmask[i];
    }
    self->busdays_in_weekmask = busdays_in_weekmask;


    normalize_holidays_list(&self->holidays, self->weekmask);

    if (self->busdays_in_weekmask == 0) {
        PyErr_SetString(PyExc_ValueError,
                "Cannot construct a numpy.busdaycal with a weekmask of "
                "all zeros");
        return -1;
    }

    return 0;
}
