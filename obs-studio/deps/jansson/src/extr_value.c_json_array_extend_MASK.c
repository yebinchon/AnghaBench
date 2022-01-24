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
struct TYPE_4__ {size_t entries; int /*<<< orphan*/ * table; } ;
typedef  TYPE_1__ json_array_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,size_t,int /*<<< orphan*/ *,int /*<<< orphan*/ ,size_t) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,size_t,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC4 (int /*<<< orphan*/ *) ; 

int FUNC5(json_t *json, json_t *other_json)
{
    json_array_t *array, *other;
    size_t i;

    if(!FUNC3(json) || !FUNC3(other_json))
        return -1;
    array = FUNC4(json);
    other = FUNC4(other_json);

    if(!FUNC1(array, other->entries, 1))
        return -1;

    for(i = 0; i < other->entries; i++)
        FUNC2(other->table[i]);

    FUNC0(array->table, array->entries, other->table, 0, other->entries);

    array->entries += other->entries;
    return 0;
}