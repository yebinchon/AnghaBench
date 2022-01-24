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
struct TYPE_3__ {int size; int /*<<< orphan*/  json; scalar_t__ visited; void* table; scalar_t__ entries; } ;
typedef  TYPE_1__ json_array_t ;

/* Variables and functions */
 int /*<<< orphan*/  JSON_ARRAY ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 void* FUNC2 (int) ; 

json_t *FUNC3(void)
{
    json_array_t *array = FUNC2(sizeof(json_array_t));
    if(!array)
        return NULL;
    FUNC0(&array->json, JSON_ARRAY);

    array->entries = 0;
    array->size = 8;

    array->table = FUNC2(array->size * sizeof(json_t *));
    if(!array->table) {
        FUNC1(array);
        return NULL;
    }

    array->visited = 0;

    return &array->json;
}