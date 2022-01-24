#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/  arr; } ;
typedef  TYPE_1__ _wrap_copy_swap_data ;
typedef  int /*<<< orphan*/  NpyAuxData ;

/* Variables and functions */
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static NpyAuxData *FUNC3(NpyAuxData *data)
{
    _wrap_copy_swap_data *newdata =
        (_wrap_copy_swap_data *)FUNC0(sizeof(_wrap_copy_swap_data));
    if (newdata == NULL) {
        return NULL;
    }

    FUNC2(newdata, data, sizeof(_wrap_copy_swap_data));
    FUNC1(newdata->arr);

    return (NpyAuxData *)newdata;
}