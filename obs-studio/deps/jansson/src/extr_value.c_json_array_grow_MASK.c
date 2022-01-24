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
struct TYPE_3__ {size_t entries; size_t size; int /*<<< orphan*/ ** table; } ;
typedef  TYPE_1__ json_array_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,int /*<<< orphan*/ **,int /*<<< orphan*/ ,size_t) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/ ** FUNC2 (size_t) ; 
 size_t FUNC3 (size_t,int) ; 

__attribute__((used)) static json_t **FUNC4(json_array_t *array,
                                size_t amount,
                                int copy)
{
    size_t new_size;
    json_t **old_table, **new_table;

    if(array->entries + amount <= array->size)
        return array->table;

    old_table = array->table;

    new_size = FUNC3(array->size + amount, array->size * 2);
    new_table = FUNC2(new_size * sizeof(json_t *));
    if(!new_table)
        return NULL;

    array->size = new_size;
    array->table = new_table;

    if(copy) {
        FUNC0(array->table, 0, old_table, 0, array->entries);
        FUNC1(old_table);
        return array->table;
    }

    return old_table;
}