#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_6__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {scalar_t__ shape; int /*<<< orphan*/  base; } ;
struct TYPE_8__ {int /*<<< orphan*/  (* tp_free ) (int /*<<< orphan*/ *) ;} ;
struct TYPE_7__ {scalar_t__ fields; int type_num; int type; scalar_t__ typeobj; scalar_t__ names; scalar_t__ metadata; int /*<<< orphan*/ * c_metadata; TYPE_6__* subarray; } ;
typedef  int /*<<< orphan*/  PyObject ;
typedef  TYPE_1__ PyArray_Descr ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_6__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 scalar_t__ Py_None ; 
 TYPE_3__* FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char*,int,int) ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC9(PyArray_Descr *self)
{
    if (self->fields == Py_None) {
        FUNC7(stderr, "*** Reference count error detected: \n" \
                "an attempt was made to deallocate %d (%c) ***\n",
                self->type_num, self->type);
        FUNC3(self);
        FUNC3(self);
        return;
    }
    FUNC6((PyObject*)self);
    FUNC5(self->typeobj);
    FUNC5(self->names);
    FUNC5(self->fields);
    if (self->subarray) {
        FUNC5(self->subarray->shape);
        FUNC2(self->subarray->base);
        FUNC1(self->subarray);
    }
    FUNC5(self->metadata);
    FUNC0(self->c_metadata);
    self->c_metadata = NULL;
    FUNC4(self)->tp_free((PyObject *)self);
}