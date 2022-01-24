#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  json_t ;
struct TYPE_5__ {size_t entries; int /*<<< orphan*/ ** table; } ;
typedef  TYPE_1__ json_array_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ **,size_t,int /*<<< orphan*/ **,size_t,size_t) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,size_t,size_t,size_t) ; 
 int /*<<< orphan*/ ** FUNC2 (TYPE_1__*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ **) ; 

int FUNC7(json_t *json, size_t index, json_t *value)
{
    json_array_t *array;
    json_t **old_table;

    if(!value)
        return -1;

    if(!FUNC4(json) || json == value) {
        FUNC3(value);
        return -1;
    }
    array = FUNC5(json);

    if(index > array->entries) {
        FUNC3(value);
        return -1;
    }

    old_table = FUNC2(array, 1, 0);
    if(!old_table) {
        FUNC3(value);
        return -1;
    }

    if(old_table != array->table) {
        FUNC0(array->table, 0, old_table, 0, index);
        FUNC0(array->table, index + 1, old_table, index,
                   array->entries - index);
        FUNC6(old_table);
    }
    else
        FUNC1(array, index + 1, index, array->entries - index);

    array->table[index] = value;
    array->entries++;

    return 0;
}