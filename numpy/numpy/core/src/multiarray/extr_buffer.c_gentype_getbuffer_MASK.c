#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {int /*<<< orphan*/ * format; int /*<<< orphan*/  strides; int /*<<< orphan*/  shape; int /*<<< orphan*/  ndim; } ;
typedef  TYPE_1__ _buffer_info_t ;
struct TYPE_11__ {int elsize; scalar_t__ type_num; } ;
struct TYPE_10__ {int len; int itemsize; int readonly; int /*<<< orphan*/ * obj; int /*<<< orphan*/ * suboffsets; void* buf; int /*<<< orphan*/ * format; int /*<<< orphan*/  strides; int /*<<< orphan*/  shape; int /*<<< orphan*/  ndim; } ;
typedef  TYPE_2__ Py_buffer ;
typedef  int /*<<< orphan*/  PyObject ;
typedef  TYPE_3__ PyArray_Descr ;

/* Variables and functions */
 int /*<<< orphan*/  Datetime ; 
 scalar_t__ NPY_UNICODE ; 
 TYPE_3__* FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int PyBUF_FORMAT ; 
 int PyBUF_WRITABLE ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  PyExc_BufferError ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  Timedelta ; 
 TYPE_1__* FUNC5 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *,TYPE_3__*) ; 

int
FUNC7(PyObject *self, Py_buffer *view, int flags)
{
    _buffer_info_t *info = NULL;
    PyArray_Descr *descr = NULL;
    int elsize;

    if (flags & PyBUF_WRITABLE) {
        FUNC2(PyExc_BufferError, "scalar buffer is readonly");
        goto fail;
    }

    /* Fill in information */
    info = FUNC5(self);
    if (info == NULL) {
        goto fail;
    }

    view->ndim = info->ndim;
    view->shape = info->shape;
    view->strides = info->strides;

    if ((flags & PyBUF_FORMAT) == PyBUF_FORMAT) {
        view->format = info->format;
    } else {
        view->format = NULL;
    }

    descr = FUNC0(self);
    view->buf = (void *)FUNC6(self, descr);
    elsize = descr->elsize;
#ifndef Py_UNICODE_WIDE
    if (descr->type_num == NPY_UNICODE) {
        elsize >>= 1;
    }
#endif
    view->len = elsize;
    if (FUNC1(self, Datetime) || FUNC1(self, Timedelta)) {
        elsize = 1; /* descr->elsize,char is 8,'M', but we return 1,'B' */
    }
    view->itemsize = elsize;

    FUNC3(descr);

    view->readonly = 1;
    view->suboffsets = NULL;
    view->obj = self;
    FUNC4(self);
    return 0;

fail:
    view->obj = NULL;
    return -1;
}