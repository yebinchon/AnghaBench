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
struct TYPE_4__ {int /*<<< orphan*/ * data; int /*<<< orphan*/ * data_finish_src; } ;
typedef  TYPE_1__ _one_to_n_data ;
typedef  int /*<<< orphan*/  NpyAuxData ;

/* Variables and functions */
 void* FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 scalar_t__ FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static NpyAuxData *FUNC5(NpyAuxData *data)
{
    _one_to_n_data *d = (_one_to_n_data *)data;
    _one_to_n_data *newdata;

    /* Allocate the data, and populate it */
    newdata = (_one_to_n_data *)FUNC3(sizeof(_one_to_n_data));
    if (newdata == NULL) {
        return NULL;
    }
    FUNC4(newdata, data, sizeof(_one_to_n_data));
    if (d->data != NULL) {
        newdata->data = FUNC0(d->data);
        if (newdata->data == NULL) {
            FUNC2(newdata);
            return NULL;
        }
    }
    if (d->data_finish_src != NULL) {
        newdata->data_finish_src = FUNC0(d->data_finish_src);
        if (newdata->data_finish_src == NULL) {
            FUNC1(newdata->data);
            FUNC2(newdata);
            return NULL;
        }
    }

    return (NpyAuxData *)newdata;
}