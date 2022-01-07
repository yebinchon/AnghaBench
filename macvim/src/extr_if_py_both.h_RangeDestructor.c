
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int buf; } ;
typedef TYPE_1__ RangeObject ;


 int PyObject_GC_Del (void*) ;
 int PyObject_GC_UnTrack (void*) ;
 int Py_XDECREF (int ) ;

__attribute__((used)) static void
RangeDestructor(RangeObject *self)
{
    PyObject_GC_UnTrack((void *)(self));
    Py_XDECREF(self->buf);
    PyObject_GC_Del((void *)(self));
}
