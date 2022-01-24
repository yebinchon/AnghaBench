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
struct TYPE_3__ {int /*<<< orphan*/  st; int /*<<< orphan*/  ex_data; } ;
typedef  TYPE_1__ MYOBJ ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 scalar_t__ gbl_result ; 
 int /*<<< orphan*/  saved_idx ; 

__attribute__((used)) static void FUNC2(MYOBJ *obj, char *cp)
{
    obj->st = FUNC0(&obj->ex_data, saved_idx, cp);
    if (!FUNC1(obj->st, 1))
        gbl_result = 0;
}