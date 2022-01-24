#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  _dst_memset_zero_data ;
typedef  int /*<<< orphan*/  NpyAuxData ;

/* Variables and functions */
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static NpyAuxData *FUNC2(NpyAuxData *data)
{
    _dst_memset_zero_data *newdata =
            (_dst_memset_zero_data *)FUNC0(
                                    sizeof(_dst_memset_zero_data));
    if (newdata == NULL) {
        return NULL;
    }

    FUNC1(newdata, data, sizeof(_dst_memset_zero_data));

    return (NpyAuxData *)newdata;
}