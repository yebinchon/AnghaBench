#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {scalar_t__ st; int /*<<< orphan*/  ex_data; } ;
struct TYPE_8__ {char* hello; } ;
typedef  TYPE_1__ MYOBJ_EX_DATA ;
typedef  TYPE_2__ MYOBJ ;

/* Variables and functions */
 int /*<<< orphan*/  CRYPTO_EX_INDEX_APP ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,TYPE_2__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (TYPE_1__*) ; 
 scalar_t__ FUNC3 (TYPE_1__*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ gbl_result ; 
 int /*<<< orphan*/  saved_idx3 ; 

__attribute__((used)) static void FUNC5(MYOBJ *obj, char *cp)
{
    MYOBJ_EX_DATA* ex_data = NULL;

    if (FUNC3(ex_data = FUNC1(&obj->ex_data, saved_idx3))
        && FUNC4(FUNC0(CRYPTO_EX_INDEX_APP, obj,
                                          &obj->ex_data, saved_idx3))
        && FUNC2(ex_data = FUNC1(&obj->ex_data, saved_idx3)))
        ex_data->hello = cp;
    else
        obj->st = gbl_result = 0;
}