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
typedef  int /*<<< orphan*/  json_t ;
struct TYPE_3__ {size_t entries; int /*<<< orphan*/ ** table; } ;
typedef  TYPE_1__ json_array_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC2 (int /*<<< orphan*/ *) ; 

int FUNC3(json_t *json, size_t index, json_t *value)
{
    json_array_t *array;

    if(!value)
        return -1;

    if(!FUNC1(json) || json == value)
    {
        FUNC0(value);
        return -1;
    }
    array = FUNC2(json);

    if(index >= array->entries)
    {
        FUNC0(value);
        return -1;
    }

    FUNC0(array->table[index]);
    array->table[index] = value;

    return 0;
}