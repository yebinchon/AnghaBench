
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_8__ {int (* tp_free ) (int *) ;} ;
struct TYPE_6__ {int * end; int * begin; } ;
struct TYPE_7__ {TYPE_1__ holidays; } ;
typedef int PyObject ;
typedef TYPE_2__ NpyBusDayCalendar ;


 int PyArray_free (int *) ;
 TYPE_4__* Py_TYPE (TYPE_2__*) ;
 int stub1 (int *) ;

__attribute__((used)) static void
busdaycalendar_dealloc(NpyBusDayCalendar *self)
{

    if (self->holidays.begin != ((void*)0)) {
        PyArray_free(self->holidays.begin);
        self->holidays.begin = ((void*)0);
        self->holidays.end = ((void*)0);
    }

    Py_TYPE(self)->tp_free((PyObject*)self);
}
