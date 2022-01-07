
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int cur; int (* destruct ) (int ) ;} ;
typedef TYPE_1__ IterObject ;


 int PyObject_GC_Del (void*) ;
 int PyObject_GC_UnTrack (void*) ;
 int stub1 (int ) ;

__attribute__((used)) static void
IterDestructor(IterObject *self)
{
    PyObject_GC_UnTrack((void *)(self));
    self->destruct(self->cur);
    PyObject_GC_Del((void *)(self));
}
