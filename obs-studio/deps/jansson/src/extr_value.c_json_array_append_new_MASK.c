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
typedef  int /*<<< orphan*/  json_t ;
struct TYPE_4__ {size_t entries; int /*<<< orphan*/ ** table; } ;
typedef  TYPE_1__ json_array_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC3 (int /*<<< orphan*/ *) ; 

int FUNC4(json_t *json, json_t *value)
{
    json_array_t *array;

    if(!value)
        return -1;

    if(!FUNC2(json) || json == value)
    {
        FUNC1(value);
        return -1;
    }
    array = FUNC3(json);

    if(!FUNC0(array, 1, 1)) {
        FUNC1(value);
        return -1;
    }

    array->table[array->entries] = value;
    array->entries++;

    return 0;
}