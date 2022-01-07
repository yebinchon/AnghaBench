
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_6__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_9__ {scalar_t__ shape; int base; } ;
struct TYPE_8__ {int (* tp_free ) (int *) ;} ;
struct TYPE_7__ {scalar_t__ fields; int type_num; int type; scalar_t__ typeobj; scalar_t__ names; scalar_t__ metadata; int * c_metadata; TYPE_6__* subarray; } ;
typedef int PyObject ;
typedef TYPE_1__ PyArray_Descr ;


 int NPY_AUXDATA_FREE (int *) ;
 int PyArray_free (TYPE_6__*) ;
 int Py_DECREF (int ) ;
 int Py_INCREF (TYPE_1__*) ;
 scalar_t__ Py_None ;
 TYPE_3__* Py_TYPE (TYPE_1__*) ;
 int Py_XDECREF (scalar_t__) ;
 int _dealloc_cached_buffer_info (int *) ;
 int fprintf (int ,char*,int,int) ;
 int stderr ;
 int stub1 (int *) ;

__attribute__((used)) static void
arraydescr_dealloc(PyArray_Descr *self)
{
    if (self->fields == Py_None) {
        fprintf(stderr, "*** Reference count error detected: \n" "an attempt was made to deallocate %d (%c) ***\n",

                self->type_num, self->type);
        Py_INCREF(self);
        Py_INCREF(self);
        return;
    }
    _dealloc_cached_buffer_info((PyObject*)self);
    Py_XDECREF(self->typeobj);
    Py_XDECREF(self->names);
    Py_XDECREF(self->fields);
    if (self->subarray) {
        Py_XDECREF(self->subarray->shape);
        Py_DECREF(self->subarray->base);
        PyArray_free(self->subarray);
    }
    Py_XDECREF(self->metadata);
    NPY_AUXDATA_FREE(self->c_metadata);
    self->c_metadata = ((void*)0);
    Py_TYPE(self)->tp_free((PyObject *)self);
}
