#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int npy_intp ;
typedef  int /*<<< orphan*/  _subarray_broadcast_offsetrun ;
struct TYPE_4__ {int run_count; int /*<<< orphan*/ * data_decsrcref; int /*<<< orphan*/ * data; int /*<<< orphan*/ * data_decdstref; } ;
typedef  TYPE_1__ _subarray_broadcast_data ;
typedef  int /*<<< orphan*/  NpyAuxData ;

/* Variables and functions */
 void* FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 scalar_t__ FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static NpyAuxData *FUNC5( NpyAuxData *data)
{
    _subarray_broadcast_data *d = (_subarray_broadcast_data *)data;
    _subarray_broadcast_data *newdata;
    npy_intp run_count = d->run_count, structsize;

    structsize = sizeof(_subarray_broadcast_data) +
                        run_count*sizeof(_subarray_broadcast_offsetrun);

    /* Allocate the data and populate it */
    newdata = (_subarray_broadcast_data *)FUNC3(structsize);
    if (newdata == NULL) {
        return NULL;
    }
    FUNC4(newdata, data, structsize);
    if (d->data != NULL) {
        newdata->data = FUNC0(d->data);
        if (newdata->data == NULL) {
            FUNC2(newdata);
            return NULL;
        }
    }
    if (d->data_decsrcref != NULL) {
        newdata->data_decsrcref = FUNC0(d->data_decsrcref);
        if (newdata->data_decsrcref == NULL) {
            FUNC1(newdata->data);
            FUNC2(newdata);
            return NULL;
        }
    }
    if (d->data_decdstref != NULL) {
        newdata->data_decdstref = FUNC0(d->data_decdstref);
        if (newdata->data_decdstref == NULL) {
            FUNC1(newdata->data);
            FUNC1(newdata->data_decsrcref);
            FUNC2(newdata);
            return NULL;
        }
    }

    return (NpyAuxData *)newdata;
}