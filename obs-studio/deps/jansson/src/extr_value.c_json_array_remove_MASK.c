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
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,size_t,size_t,size_t) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC3 (int /*<<< orphan*/ *) ; 

int FUNC4(json_t *json, size_t index)
{
    json_array_t *array;

    if(!FUNC2(json))
        return -1;
    array = FUNC3(json);

    if(index >= array->entries)
        return -1;

    FUNC1(array->table[index]);

    /* If we're removing the last element, nothing has to be moved */
    if(index < array->entries - 1)
        FUNC0(array, index, index + 1, array->entries - index - 1);

    array->entries--;

    return 0;
}