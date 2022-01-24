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
typedef  int npy_intp ;
struct TYPE_6__ {int /*<<< orphan*/ * data; } ;
typedef  TYPE_1__ _single_field_transfer ;
struct TYPE_7__ {int field_count; TYPE_1__ fields; } ;
typedef  TYPE_2__ _field_transfer_data ;
typedef  int /*<<< orphan*/  NpyAuxData ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 
 scalar_t__ FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*,TYPE_2__*,int) ; 

__attribute__((used)) static NpyAuxData *FUNC5(NpyAuxData *data)
{
    _field_transfer_data *d = (_field_transfer_data *)data;
    _field_transfer_data *newdata;
    npy_intp i, field_count = d->field_count, structsize;
    _single_field_transfer *fields, *newfields;

    structsize = sizeof(_field_transfer_data) +
                    field_count * sizeof(_single_field_transfer);

    /* Allocate the data and populate it */
    newdata = (_field_transfer_data *)FUNC3(structsize);
    if (newdata == NULL) {
        return NULL;
    }
    FUNC4(newdata, d, structsize);
    /* Copy all the fields transfer data */
    fields = &d->fields;
    newfields = &newdata->fields;
    for (i = 0; i < field_count; ++i) {
        if (fields[i].data != NULL) {
            newfields[i].data = FUNC0(fields[i].data);
            if (newfields[i].data == NULL) {
                for (i = i-1; i >= 0; --i) {
                    FUNC1(newfields[i].data);
                }
                FUNC2(newdata);
                return NULL;
            }
        }

    }

    return (NpyAuxData *)newdata;
}