#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
struct TYPE_12__ {scalar_t__ elsize; int /*<<< orphan*/  flags; int /*<<< orphan*/ * metadata; int /*<<< orphan*/ * names; int /*<<< orphan*/ * fields; } ;
typedef  int /*<<< orphan*/  PyObject ;
typedef  TYPE_1__ PyArray_Descr ;

/* Variables and functions */
 int /*<<< orphan*/  Integer ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,TYPE_1__**) ; 
 TYPE_1__* FUNC1 (TYPE_1__*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (TYPE_1__*) ; 
 scalar_t__ FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  PyExc_ValueError ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC10 (TYPE_1__*,TYPE_1__*) ; 

__attribute__((used)) static PyArray_Descr *
FUNC11(PyArray_Descr *type, PyObject *newobj, int *errflag)
{
    PyArray_Descr *new;
    PyArray_Descr *conv;

    *errflag = 0;
    if (FUNC2(newobj, Integer)
            || FUNC9(newobj)
            || !FUNC0(newobj, &conv)) {
        return NULL;
    }
    *errflag = 1;
    new = FUNC1(type);
    if (new == NULL) {
        goto fail;
    }
    if (FUNC4(new)) {
        new->elsize = conv->elsize;
    }
    else if (new->elsize != conv->elsize) {
        FUNC5(PyExc_ValueError,
                "mismatch in size of old and new data-descriptor");
        FUNC6(new);
        goto fail;
    }
    else if (FUNC10(new, conv)) {
        FUNC6(new);
        goto fail;
    }

    if (FUNC3(conv)) {
        FUNC7(new->fields);
        new->fields = conv->fields;
        FUNC8(new->fields);

        FUNC7(new->names);
        new->names = conv->names;
        FUNC8(new->names);
    }
    if (conv->metadata != NULL) {
        FUNC7(new->metadata);
        new->metadata = conv->metadata;
        FUNC8(new->metadata);
    }
    new->flags = conv->flags;
    FUNC6(conv);
    *errflag = 0;
    return new;

 fail:
    FUNC6(conv);
    return NULL;
}