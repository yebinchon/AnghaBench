#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  json_t ;
struct TYPE_2__ {double value; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (double) ; 
 scalar_t__ FUNC1 (double) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC3 (int /*<<< orphan*/ *) ; 

int FUNC4(json_t *json, double value)
{
    if(!FUNC2(json) || FUNC1(value) || FUNC0(value))
        return -1;

    FUNC3(json)->value = value;

    return 0;
}