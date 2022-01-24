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
struct TYPE_4__ {int /*<<< orphan*/ * data; } ;
typedef  TYPE_1__ _n_to_n_data ;
typedef  int /*<<< orphan*/  NpyAuxData ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 scalar_t__ FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static NpyAuxData *FUNC4(NpyAuxData *data)
{
    _n_to_n_data *d = (_n_to_n_data *)data;
    _n_to_n_data *newdata;

    /* Allocate the data, and populate it */
    newdata = (_n_to_n_data *)FUNC2(sizeof(_n_to_n_data));
    if (newdata == NULL) {
        return NULL;
    }
    FUNC3(newdata, data, sizeof(_n_to_n_data));
    if (newdata->data != NULL) {
        newdata->data = FUNC0(d->data);
        if (newdata->data == NULL) {
            FUNC1(newdata);
            return NULL;
        }
    }

    return (NpyAuxData *)newdata;
}