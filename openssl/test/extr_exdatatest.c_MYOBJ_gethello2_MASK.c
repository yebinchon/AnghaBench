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
struct TYPE_7__ {scalar_t__ st; int /*<<< orphan*/  ex_data; } ;
struct TYPE_6__ {char* hello; } ;
typedef  TYPE_1__ MYOBJ_EX_DATA ;
typedef  TYPE_2__ MYOBJ ;

/* Variables and functions */
 TYPE_1__* FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (TYPE_1__*) ; 
 scalar_t__ gbl_result ; 
 int /*<<< orphan*/  saved_idx2 ; 

__attribute__((used)) static char *FUNC2(MYOBJ *obj)
{
    MYOBJ_EX_DATA* ex_data = FUNC0(&obj->ex_data, saved_idx2);

    if (FUNC1(ex_data))
        return ex_data->hello;

    obj->st = gbl_result = 0;
    return NULL;
}