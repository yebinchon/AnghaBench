#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {size_t base; int num; } ;
struct TYPE_6__ {int /*<<< orphan*/ * metadata; } ;
typedef  int /*<<< orphan*/  PyObject ;
typedef  TYPE_1__ PyArray_Descr ;
typedef  TYPE_2__ PyArray_DatetimeMetaData ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC1 () ; 
 int /*<<< orphan*/ * FUNC2 (int) ; 
 int /*<<< orphan*/ * FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * _datetime_strings ; 
 TYPE_2__* FUNC7 (TYPE_1__*) ; 

__attribute__((used)) static PyObject *
FUNC8(PyArray_Descr *dtype)
{
    PyObject *ret, *dt_tuple;
    PyArray_DatetimeMetaData *meta;

    /* Create the 2-item tuple to return */
    ret = FUNC3(2);
    if (ret == NULL) {
        return NULL;
    }

    /* Store the metadata dictionary */
    if (dtype->metadata != NULL) {
        FUNC6(dtype->metadata);
        FUNC4(ret, 0, dtype->metadata);
    } else {
        FUNC4(ret, 0, FUNC1());
    }

    /* Convert the datetime metadata into a tuple */
    meta = FUNC7(dtype);
    if (meta == NULL) {
        FUNC5(ret);
        return NULL;
    }
    /* Use a 4-tuple that numpy 1.6 knows how to unpickle */
    dt_tuple = FUNC3(4);
    if (dt_tuple == NULL) {
        FUNC5(ret);
        return NULL;
    }
    FUNC4(dt_tuple, 0,
            FUNC0(_datetime_strings[meta->base]));
    FUNC4(dt_tuple, 1,
            FUNC2(meta->num));
    FUNC4(dt_tuple, 2,
            FUNC2(1));
    FUNC4(dt_tuple, 3,
            FUNC2(1));

    FUNC4(ret, 1, dt_tuple);

    return ret;
}